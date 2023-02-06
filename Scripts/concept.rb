require_relative 'markdown_record'

class Concept < MarkdownRecord
  def self.define(title)
    body = nil
    until body
      openapi_response = OPENAI.post('completions') do |req|
        req.body = { model: 'text-davinci-003', max_tokens: 1024, prompt:
          "Provide a postgraduate-level definition of the term '#{title}'.

        The definition should be 1 paragraph, maximum 150 words." }.to_json
      end
      puts JSON.parse(openapi_response.body)
      body = JSON.parse(openapi_response.body)['choices'].first['text'].strip if JSON.parse(openapi_response.body)['choices']
    end
    update(title: title, body: body)
  end

  def self.define_all
    Concept.all.each do |c|
      puts c[:title]
      Concept.define(c[:title])
    end
  end
end
