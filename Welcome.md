This is a Ruby/OpenAI-enhanced Obsidian knowledgebase for the GreenPill podcast.

Github: https://github.com/stephenreid321/greenpill
Obsidian Publish: https://publish.obsidian.md/greenpill

* `/Diagnosis`: diagnosing the metacrisis
* `/Responses`: broad ways in which we could usefully respond to the metacrisis
* `/Tech`: specific technologies that could be relevant
* `/Transcripts`: transcripts of all GreenPill podcasts
* `/_scripts` (not visible on Obsidian/Obsidian Publish) contains the Ruby scripts that supercharge the knowledgebase, including `MarkdownRecord` that provides an ORM-like syntax for manipulating Markdown files

## Todos
- [ ] Embed actual YouTube videos
- [ ] Find a good way of linking to exact timestamps in transcripts
- [ ] Merge this with [metacrisis.net](https://metacrisis.net)?
- [ ] AI-generated audio/video using tools like [synthesia.io](https://www.synthesia.io/) or [elai.io](https://elai.io) 
- [ ] AI-powered semantic search using [OpenAI Embeddings](https://beta.openai.com/docs/guides/embeddings) & [Pinecone](https://cobusgreyling.medium.com/using-pinecone-for-question-answering-with-similarity-search-85ec8a636da2) or [Algolia](https://www.algolia.com/)
- [ ] Train an AI model on this and allow people to chat to it
- [ ] Make a green-accented GreenPill skin
- [ ] Transition away from Obsidian Publish to an open source publishing solution e.g. [Flowershow](https://flowershow.app/) or [digital-garden-jekyll-template](https://github.com/maximevaillancourt/digital-garden-jekyll-template)
- [x] 'Top 3 podcasts on this concept'
- [x] AI-generated 'see also' links
- [x] Host at [greenpill.education](https://greenpill.education)

## Interactive console
`irb -I . -r '_scripts/console'`
