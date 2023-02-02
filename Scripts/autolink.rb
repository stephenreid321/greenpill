require 'yaml'

concepts = {}
Dir['Concepts/*.md'].each do |path|
  content = File.read(path)
  yaml = YAML.load(content)
  title = path.split('/').last.split('.md').first
  aliases = [title]
  aliases += yaml['aliases'].split(', ') if yaml['aliases']
  concepts[title] = aliases
end

concepts.each do |primary, terms|
  Dir['Transcripts/*.md'].each do |path|
    content = File.read(path)
    terms.each do |term|
      content.gsub!(/(?<!\[\[)\b#{term}\b(?!\]\])/, primary == term ? "[[#{primary}]]" : "[[#{primary}|#{term}]]")
    end
    File.write(path, content)
  end
end
