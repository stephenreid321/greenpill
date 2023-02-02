require_relative 'constants'
require 'yaml'

stops = STOPS

Dir['Concepts/*.md'].each do |path|
  text = File.read(path)
  yaml = YAML.load(text)
  title = path.split('/').last.split('.md').first
  stops << title
  stops += yaml['aliases'].split(', ') if yaml['aliases']
end

text = []
Dir['Transcripts/*.md'].each do |path|
  text << File.read(path)
end
text = text.flatten.join(' ').downcase
words = text.split(' ')
word_frequency = words.reject { |a| stops.include?(a) || a.length < 4 }.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
phrase2_frequency = words.each_cons(2).reject { |a, b| stops.include?("#{a} #{b}") || (stops.include?(a) || stops.include?(b)) || (a.length < 4 || b.length < 4) || a.start_with?('[[') || a.end_with?(']]') || b.start_with?('[[') || b.end_with?(']]') }.each_with_object(Hash.new(0)) { |word, counts| counts[word.join(' ')] += 1 }

phrase2_frequency.sort_by { |_w, f| -f }.first(100).each do |w, f|
  puts "#{w} #{f}"
end
