require_relative 'constants'

class MarkdownRecord
  def self.fields
    %w[tags aliases]
  end

  def self.dir
    to_s.pluralize
  end

  def self.all
    @all = []
    Dir["#{dir}/*.md"].map do |path|
      text = File.read(path)
      yaml = YAML.load(text)
      yaml = yaml.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      {
        title: path.split('/').last.split('.md').first,
        body: text.split('---')[2..-1].join('---').strip
      }.merge(yaml)
    end
  end

  def self.find_or_create(attributes)
    find(attributes) || create(attributes)
  end

  def self.find_by_title(title)
    all.find { |c| c[:title] == title }
  end

  def self.create(attributes)
    y = fields.map { |f| [f, attributes[f.to_sym]] }.to_h
    File.write("#{dir}/#{attributes[:title]}.md", y.to_yaml + "---\n\n#{attributes[:body]}")
    attributes
  end

  def self.update(new_attributes)
    attributes = find_by_title(new_attributes[:title])
    attributes = attributes.each_with_object({}) { |(k, v), h| h[k] = new_attributes[k] || v }
    create(attributes)
  end

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
    all.each do |r|
      puts r[:title]
      define(r[:title])
    end
  end
end