models_with_titles = {
  Response => [['network state', 'network states'], 'decentralized society', 'lunarpunk', 'solarpunk', 'terrapunk'],
  Tech => [%w[hypercert hypercerts], ['local currency', 'local currencies'], 'basic income', 'web3 social']
}

models_with_titles.each do |model, titles|
  titles.each do |title|
    aliases = nil
    if title.is_a?(Array)
      aliases = title[1..-1].join(', ')
      title = title.first
    end
    definition = model.get_definition(title)
    attributes = model.create(title: title, tags: model.to_s.downcase, aliases: aliases, body: definition)
    attributes = model.set_callout(attributes, 'example', 'See also', 'x, y, z')
    attributes = model.set_callout(attributes, 'info', 'Podcasts mentioning this term most frequently', "* x\n* y\n* z")
  end
end

# hv_xBK_XZjw WVEP0zAK-xQ NYcf9Q4STqE yovdsKTQFR0 2u5ZsCThRU0 wcCenM5A-l8 WRohQKNNuM4 YWeHepqmNeU Kb8Af0KBNZ0 BKUrBr815zw eUi6rHYzupE xNYeVT94dUk XnB2xTHSIjQ PlDOjDu-mpU KbSgm3G_H_U uFGKoV2knYI hDiBq0QO23U ro9kFPX0Tk0 aqe8xel9hsA 57c-bQvkH9o OYH7EQjas-c y7QftdMGQuo -VW48dClSYw ayJkMPxpuXg mecvIg1sXik iNEYsF4arVE qyd7mvQmn5I ziN_EEDIULI SKC1AB9YDQQ E0B5Uw4ThfE kyo5SxtSJ9U yTxY5kAfHKc jrlXl_8723Y 7gRtQOPyABg qAV8hfSTLV0 OMGcpSBJ8R8 YQDl5ppq4Dw g3ocz7CpPys cR_9UpVagZ0 mYK48FNljVA 6roeoukWykI LyDwK9a8KrQ 3_8CPpVaaGA gQ4rEa9ULOo 82SNLVQk_KA GgIzmXJ0Y7U 69eE189Jrz4 SDJ3gD6NodQ Mwqf2wBY24A 2RSf2bRiieU TqwAX_oGUh8 mPPVG8K9VMM IzpCRTEnaDY BLKn7KOMg7A qo5mtvIBM48 EONafjoyzWw VjE9a9COahc xYoQjd47Cvs hDaZhBNpBHc Bzpcrp3-dHU fH4-dG1ex24 S-f0G18HZzM tRZ-hDXJpPQ myXbFBTEueg 9AIMpDl6tPI DjUdJ8c8hek WCOrWYqeGOE 9UYjLiKvx68 OUNERu4pwbM bxx3R8S1NmA jY_Tye7oIWc JaOlug9tOQ8 j_BoBiBktc4 55AK61zMY1s slMdeSBwC7I 3HEGAeTtnko MYgCZUvz5bA L54lcwjUYzM -wQ8VgcoFsg xjxSWZ1K2y4 8mio3AQlYRA
YOUTUBE_IDS = []
Transcript.populate(skip_existing: true)

[Tech, Response, Diagnosis].each do |model|
  model.all.each do |attributes|
    mentions = Transcript.mentions(attributes)
    #  model.set_see_also(attributes, Concept.all.map { |c| c[:title] })
    model.set_callout(attributes, 'info', 'Podcasts mentioning this term most frequently', mentions.sort_by { |_k, v| -v }[0..2].map { |k, v| "* [[#{k}]] (#{v})" }.join("\n"))
  end
end
