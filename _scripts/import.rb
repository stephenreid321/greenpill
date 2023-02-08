
models_with_titles = {
  Response => [['network state', 'network states'], 'decentralized society', 'lunarpunk', 'solarpunk', 'terrapunk'],
  Tech => [['hypercert', 'hypercerts'], ['local currency', 'local currencies'], 'basic income', 'web3 social']
}

models_with_titles.each { |model, titles|
  titles.each { |title|
    aliases = nil
    if title.is_a?(Array)
      aliases = title[1..-1].join(', ')
      title = title.first
    end
    definition = model.get_definition(title)
    attributes = model.create(title: title, tags: model.to_s.downcase, aliases: aliases, body: definition)
    attributes = model.set_callout(attributes, 'example', 'See also', 'x, y, z')
    attributes = model.set_callout(attributes, 'info', 'Podcasts mentioning this term most frequently', "* x\n* y\n* z")
  }
}

Transcript.populate

[Tech, Response, Diagnosis].each { |model|
  model.all.each { |attributes|
    mentions = Transcript.mentions(attributes)    
    # model.set_see_also(attributes, Concept.all.map { |c| c[:title] })
    model.set_callout(attributes, 'info', 'Podcasts mentioning this term most frequently', mentions.sort_by { |k,v| -v }[0..2].map { |k,v| "* [[#{k}]] (#{v})" }.join("\n"))    
  }
}
