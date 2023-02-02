require_relative 'constants'
require 'faraday'
require 'nokogiri'
require 'yaml'

existing_youtube_ids = []
Dir['Transcripts/*.md'].each do |path|
  content = File.read(path)
  yaml = YAML.load(content)
  title = path.split('/').last.split('.md').first
  existing_youtube_ids << yaml['youtube_id']
end

youtube_ids = %w[hv_xBK_XZjw WVEP0zAK-xQ NYcf9Q4STqE yovdsKTQFR0 2u5ZsCThRU0 wcCenM5A-l8 WRohQKNNuM4 YWeHepqmNeU Kb8Af0KBNZ0 BKUrBr815zw eUi6rHYzupE xNYeVT94dUk XnB2xTHSIjQ PlDOjDu-mpU KbSgm3G_H_U uFGKoV2knYI hDiBq0QO23U ro9kFPX0Tk0 aqe8xel9hsA 57c-bQvkH9o OYH7EQjas-c y7QftdMGQuo -VW48dClSYw 3VM1014:1 undefined ayJkMPxpuXg mecvIg1sXik iNEYsF4arVE qyd7mvQmn5I ziN_EEDIULI SKC1AB9YDQQ E0B5Uw4ThfE kyo5SxtSJ9U yTxY5kAfHKc jrlXl_8723Y 7gRtQOPyABg qAV8hfSTLV0 OMGcpSBJ8R8 YQDl5ppq4Dw g3ocz7CpPys cR_9UpVagZ0 mYK48FNljVA 6roeoukWykI LyDwK9a8KrQ 3_8CPpVaaGA gQ4rEa9ULOo 82SNLVQk_KA GgIzmXJ0Y7U 69eE189Jrz4 SDJ3gD6NodQ Mwqf2wBY24A 2RSf2bRiieU TqwAX_oGUh8 mPPVG8K9VMM IzpCRTEnaDY BLKn7KOMg7A qo5mtvIBM48 EONafjoyzWw VjE9a9COahc xYoQjd47Cvs hDaZhBNpBHc Bzpcrp3-dHU fH4-dG1ex24 S-f0G18HZzM tRZ-hDXJpPQ myXbFBTEueg 9AIMpDl6tPI DjUdJ8c8hek WCOrWYqeGOE 9UYjLiKvx68 OUNERu4pwbM bxx3R8S1NmA jY_Tye7oIWc JaOlug9tOQ8 j_BoBiBktc4 55AK61zMY1s slMdeSBwC7I 3HEGAeTtnko MYgCZUvz5bA L54lcwjUYzM -wQ8VgcoFsg xjxSWZ1K2y4 8mio3AQlYRA]

(youtube_ids - existing_youtube_ids).each do |youtube_id|
  r = Faraday.get("https://www.youtube.com/watch?v=#{youtube_id}")
  title = r.body.match(%r{<title>(.+)</title>})[1].force_encoding('UTF-8').gsub('/', ' ').gsub('#', '').gsub(' - YouTube', '')
  title = CGI.unescapeHTML(title)

  puts title
  next if File.exist?("Transcripts/#{title}.md") || title.empty?

  r = Faraday.get("https://youtubetranscript.com/?server_vid=#{youtube_id}")
  text = Nokogiri::XML(r.body.gsub('</text><text', "</text>\n<text")).text.downcase

  File.write("Transcripts/#{title}.md",
             %(---
youtube_id: #{youtube_id}
tags: transcript
---

#{text}))
end
