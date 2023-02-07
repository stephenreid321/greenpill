require_relative 'constants'

class Transcript < MarkdownRecord
  def self.fields
    %w[tags aliases youtube_id]
  end

  def self.existing_youtube_ids
    all.map { |t| t[:youtube_id] }
  end

  def self.populate
    concepts_with_aliases = Concept.all.map { |c| [c[:title], [c[:title]] + (c[:aliases] ? c[:aliases].split(', ') : [])] }.to_h
    YOUTUBE_IDS.each do |youtube_id|
      r = Faraday.get("https://www.youtube.com/watch?v=#{youtube_id}")
      title = r.body.match(%r{<title>(.+)</title>})[1].force_encoding('UTF-8').gsub('/', ' ').gsub('#', '').gsub(' - YouTube', '')
      title = CGI.unescapeHTML(title)

      puts title
      next if File.exist?("Transcripts/#{title}.md") || title.empty?

      r = Faraday.get("https://youtubetranscript.com/?server_vid=#{youtube_id}")
      body = Nokogiri::XML(r.body.strip.downcase.gsub('[', '').gsub(']', '').gsub('</text><text', '</text> <text')).text
      # body = Nokogiri::XML(r.body).search('transcript').children.map do |node|
      #   t = node.attributes['start'].value
      #   "#{node.text.strip.downcase.gsub('[', '').gsub(']', '')} [#{t.split('.').first}](https://www.youtube.com/watch?v=#{youtube_id}&t=#{t}s)"
      # end.join("\n")

      transcript = Transcript.create(title: title, tags: 'transcript', youtube_id: youtube_id, body: body)
      transcript = Transcript.tidy(transcript)
      transcript = Transcript.backlink(transcript, concepts_with_aliases)
    end
  end

  def self.tidy(t)
    body = t[:body]
    DASHED_TERMS_TO_UNDASH.each do |term|
      body = body.gsub(/#{term}/i, term.gsub('-', ''))
    end
    SPACED_TERMS_TO_UNSPACE.each do |term|
      body = body.gsub(/#{term}/i, term.gsub(' ', ''))
    end
    SPACED_TERMS_TO_DASH.each do |term|
      body = body.gsub(/#{term}/i, term.gsub(' ', '-'))
    end
    CORRECTIONS.each do |term, correction|
      body = body.gsub(/#{term}/i, correction)
    end
    Transcript.update(title: t[:title], body: body)
  end

  def self.backlink(t, concepts_with_aliases)
    body = t[:body]
    concepts_with_aliases.each do |primary, terms|
      terms.each do |term|
        body.gsub!(/(?<!\[\[)\b#{term}\b(?!\]\])/, primary == term ? "[[#{primary}]]" : "[[#{primary}|#{term}]]")
      end
      Transcript.update(title: t[:title], body: body)
    end
  end
end
