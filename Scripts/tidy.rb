require_relative 'constants'

Dir['Transcripts/*.md'].each do |path|
  text = File.read(path)

  DASHED_TERMS_TO_UNDASH.each do |term|
    text = text.gsub(/#{term}/i, term.gsub('-', ''))
  end
  SPACED_TERMS_TO_UNSPACE.each do |term|
    text = text.gsub(/#{term}/i, term.gsub(' ', ''))
  end
  SPACED_TERMS_TO_DASH.each do |term|
    text = text.gsub(/#{term}/i, term.gsub(' ', '-'))
  end
  CORRECTIONS.each do |term, correction|
    text = text.gsub(/#{term}/i, correction)
  end

  File.write(path, text)
end
