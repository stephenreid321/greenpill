---
youtube_id: 2u5ZsCThRU0
tags: transcript
---

foreign
[music]
ation how you doing on the pod today we
got fabian who is wow he's just such an
og i mean fabian was one of the
co-authors of erc20 which is the
standard that all tokens well all
fungible tokens on the ethereum network
use
um and well not all but there's there's
substandards that are derived from erc20
but erc20 is kind of like the godfather
or the godmother of uh of tokens on the
ethereum network
um fabian is also the author of erc 725
which is a standard around identity on
the ethereum network and if you've been
following season two of the greenpill
podcast you know that we're talking a
lot about decentralized identity and how
it can create a more green-pilled world
by allowing us to track our interactions
with each other create more positive
some games through repeat interactions
fabian was also involved in the miss
project which is before metamask and
infuria one of the ways that you could
integrate with the web3 based web
um and he's just been a lead engineers
thinker in the ethereum space for the
last half a decade and that's exciting
to me because we're now not pushing
forward standards for uh tokens and
missed browsers and stuff like that
we're now pushing on universal identity
and uh account abstraction and so
um this is this episode we're basically
covering the opportunity space of
identity and creating new token
standards and also fabian's working on
this uh layer one called the luxo
network that is going to put a lot of
these ideas in practice they have some
really beautiful apis designs and and
you know fabian was right in the right
place uh in in a lot of things in the
past of ethereum so that gives me a lot
of confidence that he's going to be in
the right place uh and on to something
when it comes to identity and and some
of the trends that we're following on
the greenpill podcast so uh fabian is
just a gigabraine he's really smart he's
an engineer he also speaks marketing he
also understands the space really well
and so i think this is a really fun
episode episode so uh without further
ado i give you fabian enjoy the glow
dollar is a new stable coin with a very
special property as the market cap of
glow goes up extreme poverty goes down
glow sounds for global income coin it's
a dollar backed non-profit stable coin
that creates basic income for people
living in extreme poverty glow is
basically the same business model as
usdc with yield generating treasuries on
one side and a stable coin on ethereum
on the other but instead of being a
for-profit company glow is a non-profit
that donates 100 of all yields from the
glow reserve to give directly its basic
income program give directly as a
charity that gives money to people
living in poverty and is a charity that
vitalik has previously donated to and
supported in the past through the globe
nonprofit you can reduce property by
just holding a stable coin glow is
launching in early 2023 and you can join
the waitlist at glowdollar.org greenpill
that's gro dollar dot org slash green
pill hey bankless nation if you're
listening to this it's because you're on
the free bank this rss feed did you know
that there is an ad free version of bank
list that comes with the bankless
premium subscription no ads just
straight to the content but that's just
one of many things that a premium
subscription gets you there's also the
token report a monthly bullish bearish
neutral report on the hottest tokens of
the month and the regular updates from
the token report go into the token bible
your first stop shop for every token
worth investigating in crypto bankless
premium also gets you a 30 discount to
the permissionless conference which
means it basically just pays for itself
there's also the airdrop guide to make
sure you don't miss a drop in 2023 but
really the best part about bankless
premium is hanging out with me ryan and
the rest of the bankless team in the
inner circle discord only for premium
members want the alpha check out ben the
analyst degen pit where you can ask him
questions about the token report got a
question i've got my own q a room for
any questions that you might have at
bank list we have huge things planned
for 2023 including a new website with
login with your ethereum address
capabilities and we're super excited to
share what we are calling bank list 2.0
soon tm so if you want extra help
exploring the frontier subscribe to
bankless premium it's under 50 cents a
day and provides a wealth of knowledge
and support on your journey west i'll
see you in the discord hey fabian how
you doing man
good i mean i got sick the last weekend
but that's why my voice is a little
different than usual but i'm good now
yeah we're transitioning to winter so i
think things are getting colder uh and
i'm glad you're feeling better
well uh fabian i've been following your
work for years uh you're the author of
the erc20 and erc 725 uh standards you
worked on mist web3js uh and lots of
great things in the ethereum ecosystem
and excited to catch up and and talk
about your most recent work so where
should we dive in
um
i think we can talk a little bit about
my my path getting to luxo i think
that's a good idea and then i think the
standards is probably the next important
thing that's what people yeah right now
talked about on defcon a lot
so yeah well i mean i think the
standards you worked on have been really
influential on the ecosystem so yeah
let's start with your your path to to
getting to luxo and and working on those
standards
so the kind of short version of it is
um worked at the team foundation as lead
the app developer
um from from there built together with
alexander van de sander uh the miss
browser he was a pretty vocal person uh
at the time you know in ethereum uh he
came up with the miss browser concept
and really the most fascinating thing
about the miss browser concept is that
most of the things that you know he
described in this video are not even
done yet and in fact now will be
possible with universal profiles and the
new standards i have built lots of these
things that yet in this video cannot be
done nicely
um so i just wanted to interject for the
listeners who don't know uh miss browser
was a bundled kind of web browser where
you would sync the blockchain locally
and then you could do web3 enabled
things and uh it kind of was it it was
was sort of the first idea of
integrating web3 into a browser-based
experience but i think that it it didn't
really take off because you had to
download and sync the whole blockchain
in order to be able to do anything in in
browser extension that you could install
and point to inferior kind of beat
missed in in the marketplace but it was
still useful proof of concept is that is
that an accurate portrayal of the miss
project
um actually the miss browser was the
thing that initiated all of this so
metamask was the answer to the missed
browser and we could have also right i
mean we could have always pointed to an
external uh source for the nodes the
idea of the miss browser was really to
try the full decentralized way like
you're on your own note you have a local
uh browser that can run the apps by
building the best browser by building
the first wallet we had to literally
invent the way the apps work and how the
apps even exist
um metamask then was kind of like you
know trying to make the simpler version
of the miss browser by saying hey
instead of making a full browser we just
make a browse extension
um and like they kind of like you know
came out of it came out of mist in a way
um but it was the centralized version of
it because you didn't run your own node
right
um and out of this came literally later
everything else we had after that so the
miss browser was kind of the initiation
and the initial first ever
the app browser in fact yes first
whatever web3 browser if you want to
call it like that
um and we had to define a lot of pieces
in that time we had to define of how you
talk to a d app right which later you
know i provided uh like came up with the
ethereum provider standard which was a
bit more generic initially we just
exposed the web3 object into the d app
which then what the apps used to talk to
uh you know the browser or later even
metamask metamask or took that
um and um
yeah i mean we had the first the theme
wallet running this way and figured out
a lot of things along the way
so i mean you know
as a listener and someone who's followed
your career what i kind of take away
from this is that fabian you've been
sort of on the forefront of innovating
in web 3 for years and so
um i look backwards in the rear review
mirror at the at the success of erc20
and 725 and web 3.js and it allows me to
have a lot of confidence looking forward
that you're going to help us continue to
innovate with universal profiles and the
work that you're doing these days so um
it's been a long journey in it and you
know i'm curious i'm curious about erc20
uh maybe that's the next at least the
the next thing to to chat about tell me
about working on the erc20 standard
because that's the foundation of
everything in this space
it is that's actually the least
contribution i made i mean from my
perspective because this was really
initially uh vitalik's uh proposal it
wasn't a wiki page we had to chat like
as a few developers i'm not sure there
were like three or four of us debating
uh how a topic could look like in a
smart conduct form and at the time there
was this uh er eip repository that
martin bc created to discuss ethereum
proposals around the network
and literally just two weeks before he
created this so i thought that's a great
place to discuss a standard so instead
of this niche wiki page where nobody is
really really paying attention let's
just talk there and so i had to come up
with a format that was more
specification like so i kind of you know
referenced the rfc specification way if
it's a bit simpler form and i called it
a table request for comment because i
thought it was a great
way to get input from the community and
then have a proper standard
the request for comment became then even
the name for the standard and it was the
issue number 20 which created new year's
e20 and um i did some small changes we
had the discussion of 60 people over
like a few peer a month period and
people started adopting it and that this
became you know the token what's really
interesting
for me though is
how such a simple agreement on just a
few functions can have such a strong
impact on all the things you can build
on a program of a blockchain right and
this is this is in my opinion the most
fascinating thing to see how
you know what comes out of so little
agreement if you want
um and yes it built the basis right icos
came out of it d5 came out of it nfts
came out of it literally everything came
out of it
um
and what i'm now doing and this is
really uh why i took this as a learning
which was purely i would say a
coincidence even you know that this took
off that big time there was a need
um at the time but like taking this
learning and then making this more
consciously right that's what i'm doing
now you know like coming up with the
next set of standards that are
fundamentally important for the
the future of this space but doing it
with some thought and doing it with some
way where i can already like you know
anticipate things and put them together
in the right way that they create a
great foundation for things to be built
in the future while using 20
it was on the end purely you know like
people said they want tokens with
telethon a little bit came up with this
idea we discussed around it made a bit
better changed things and came up with
some basic bare bone thing without
really stretching our thoughts far too
uh too far in the future trying to make
it too complex system because first
something needed to be adopted right
um that's now different when you have
all this experience what happened over
these years and you see you know what
went good right and wrong what could be
improved now you can make it right and
you now can make it way better with some
experience that exists now which didn't
exist at all in 2015 november six months
seven seven eight months after the main
net was started right was a very
different time so that actually you know
i think puts puts me in a way better
position to like do these standards and
or improve these standards and create
these new standards that i have done now
over the last few years together with my
team
i'm wondering if you could do erc20 all
over again is there anything that you
would change given the the gift of
perfect hindsight
i am actually doing it as a 20 all over
again actually we have we call it
luxor standard proposal number seven so
it's called lsb7 and this is literally
um the new esc20 so it's actually i did
exactly that so what was improved is
number one
um the way of that actually this this
token standard calls other smart
contracts right this idea was not new
right there was esc
777-223 even seven to one has this kind
of uh on tokens receive function built
in
but how we did it is we did it in a
generic way that it's a generic function
you call it called called universal
receiver that basically can notify any
[[smart contract]] especially profiles
whatever exists in the future in a
generic way that means you can now send
tokens to the smart corner and the token
the smartphone can react on it
which is the biggest pain point of es20
for example that you have to constantly
do this you know approve and transfer
from kind of double call
just to like make a smart connect
understand that he received some tokens
which is i guess the most biggest pain
point of d5 in fact so yes that's
improved uh what's also improved is to
have batch calls built in what's also
improved is that you have an unlimited
way of adding metadata smart on readable
metadata to your token so now you can
reference the json file with some
pictures and name and description
website and whatever but you can also
reference other protocols or other
tokens or other systems that somehow
relate to the token you have literally
in unlimited key value store that you
can attach to your token contract which
will make these extremely extensible in
in a standardized way
um
so that's kind of the major improvements
there's a lot more smaller detail
improvements but also really what's
what's nice now is the the naming and i
think when it comes to standards one of
the most important thing is
hey you're having an intuitive naming
having something that kind of developers
ideally get and kind of can remember
without constantly having to go back to
documentation and reading it again and
again and right now for example there's
a lot of differences between esc20 and
esc 7 to 1 in terms of how the functions
are named
purely because they all thought they
want to improve it and change it and
then they give it different function
names and all of this and that makes it
very confusing for people
so when you do these standard from
scratch and you really don't care about
the past because you create a new
network and you can literally do things
right
we can clean up that mess and kind of
you know unify function names in a way
that they are now consistent across nfts
and token standards and in the way they
act and behave and everything so it's
it's also a clean house cleaning task
that we did in a way on top of that
improvement yeah
yeah i mean having having users is a
double-edged sword because you have
network effects that come out of that
but you also have a lot of legacy things
that you if you could do it all over
again you'd probably do differently
um so i'd love to segue from erc oh
sorry go ahead no exactly i mean i fully
agree with you this is exactly the the
big problem that you know ethereum's uh
standard space has right this a lot of
people want to propose things but
there's a lot of people already went
with some way right and they already
went down rabbit hole a so it's very
hard to convince them to go to rapid
hole c or d and if you create a new
network from scratch
people are very willing to adopt and use
the new standard from scratch that gives
basically if they're the right standards
in the right way give people a lot more
possibilities of what they can build and
you can create a whole different unit of
experience something very hard to
to push through in an existing network
and this is really a little bit same
with bitcoin by the way in any other
network right they always have that
baggage of
people have a way of doing things and
they kind of want to stick with it in a
way
yeah yeah backwards compatibility is a
uh uh is a problem but also
yeah
um so i mean i i'd love to segue from
talking to from erc20 which is a
foundational part of tokens in the
ethereum space to erc725 which is an
identity standard and just as i prompt
you to talk about erc 725 one of the you
know this is the greenpill podcast
we're talking about regenerative uses of
crypto positive some uses of crypto and
one of sort of the ideas that we've been
playing with is this idea that
um with identity we can now have these
pseudonymous identities where because we
can track our interactions with each
other we can have more positive some
games through repeat interactions with
each other therefore complexifying the
design space and allowing for more
regenerative crypto uh projects to be
built so i'm just really curious to know
you know why erc 725 was proposed how
it's going and um maybe you could give
us a little bit of a hint of of how
that's evolving into universal profiles
over from your vantage point hmm
um i mean first off uh or you're totally
right right the biggest missing piece in
blockchain is is identity i mean we have
all we have an identifier it's an
address it's just a very unhuman
readable identifier and that's the big
issue
um it's not very identifiable uh by
machines yes by people not so much
um and that's the biggest issue and
that's exactly why a lot of use cases
aren't happening and that's why
literally the nft space is [ __ ] if i
can say that in this podcast i'm not
sure how you
um but i mean it's it's basically a
problem because the identify identifying
creators are not very visible right your
your product your nft is visible you as
the actual person group dao brand
whatever created it totally invisible so
725 basically came initially out of a uh
some you know workshops i did
um and the idea was let's create a smart
content-based account system i had them
make some thoughts about how to do this
i came up with a very basic concept
which was the first version of seven to
five
i somehow after that had this urge to
propose this as a standard and i was
working at ethereum i had literally no
idea or interest in doing anything work
identity whatsoever
um there was civic protocol and and
what's the consensus version
uh newport at the time in newport yeah
no they were all like the big the big
players at the time and yeah
um i had totally nothing to do with this
i just had this urge that i need to
somehow write this in a doc as an erc
which i did
um somehow it took traction people got
all like really interested in that and
newport got quite offended
because they said oh my god a smart kind
of basic counts are you crazy and uh you
cannot put everything on chain and
um wrote big like big articles like
saying why this is a monolith and they
want to build a modular system
uh long story short
um i literally thought other people
would go do something with the standard
i worked you know continued work on web
3.js and other things in ethereum i just
put it out there it got traction there
was the origin protocol that they like
created alliance and people now all
subscribed to using it blah blah blah
what happened funny enough is that
nobody really took the lead on this and
involved the center forward because it
was not done done it was like the basic
idea
um
somehow then at some point it came this
this guy taylor osaka i think and he
said hey here i can build an
implementation for for this i want to
try and said sure go ahead do and then
he came back and he had some extra ideas
of what we could approve and then really
i changed a little up with him together
and then i think a few weeks later he
just left and said i will stop coding i
would become a doctor
great whatever then i was sitting there
still and when i
started luxo i realized that this
standard is so extremely fundamental to
everything we wanted to do because we
want to create a blockchain for the new
creative economy where identity
obviously if you create stuff right the
creator is quite important
um and not only you know do you need to
identify people great stuff but you also
need a user experience in blockchain
that actually people can manage
and really thinking about es75 it wasn't
i think
november 2000 and
17 when i proposed it
um
up until really when i started really
building it out in detail which was 2019
or so
um i thought a lot about it i don't know
somehow this it didn't let me go you
know this then i had to i pondered it
around my head over the years and
on the end i really got to like more and
more ideas of what can be done with it
and how it can be done in blah blah and
all of the things and
so long story short we build it out over
the last two years exactly all the
things that were missing that i thought
need to be added will build it out it's
not only one standard it's a set of
14 actually we have 17 standards now
where 75 is a core building block of
many of them
because seven to five itself is actually
a very generic standard it's two pieces
it's two parts of a standard one is a
generic execution so you can just
execute to a [[smart contract]]
onto any other smart connects totally
generic execution do whatever you want
and the red the second is a generic key
value store
what's the what's the benefit over a
generic key value store versus writing
variables in a [[smart contract]] if you
have a [[smart contract]] and you have two
functions like name and symbol of a
token right you deploy the smart
contract that's it that's all you got
right you can now have a name in a
simple maybe you can change it that's it
but if you would add like some third
thing like a website whatever right you
couldn't anymore
if you have a generic key value store
you can extend this for the foreseeable
future in whatever way you want you
could say okay one of these you know
added variables is now an address or
it's a new product call or it's like a
reference a new json document or what
the heck you want to add right you can
add millions of entries to a smart
contact now
that makes things extremely extensible
from a information point of view which
can also be used for extending logic and
all kind of stuff so that's the
combination that's a ground piece that
works really well for a new metadata
center for tokens it works really well
for a profile [[smart contract]] it works
really well for
all kinds of new type of [[smart contract|smart contracts]]
that we haven't even thought about yet
and so
we have filled out all of this
groundwork and we have the thing called
universe profiles which is a combination
of a few smart contact number one it's
your core account
that's obviously your address that's the
thing you won't want don't want to
change over time right that's where you
gain your reputation this one is a
full-on profile you can attach your
profile picture you can act through it
on chain
you can do lots of really cool features
that i guess more developers will be
interested in
but you can also better manage it
because that one account is controlled
by another account that we call a key
manager
and the on specifically lsp6 key manager
and by having a key manager now you can
have multiple keys controlling that one
account so that's a very similar thing
to what people discuss now in ethereum
with account abstraction right there's
many accounts proposals some want to
solve it on a smart conduct level i
don't want to solve it on a minor level
lsp6 and year 75 account is kind of like
a smart connect level version account
abstraction and a lot more than that
um what it gives you is it gives you a
smartphone an internet like a blockchain
based account that you can use to hold
stuff to hold token interact have a
profile picture have a reputation have a
follower system have a decentralized
twitter have whatever hack you want on
your web free account while managing it
through you know your mobile phone your
computer your hardware wallet your ring
you will have in the finger uh what are
your ar classes
act in a game through your decentralized
account to whatever else you want
um at the same time other people can pay
for the gas which makes onboarding very
seamless like no more
go to an exchange and get some tokens
kind of thing you can just like
literally go to a service say create me
a profile give me three months i pay you
next month uh type of thing that will
onboard a lot of people to web3 and at
the same time they have a full-on
account that can even extend that can
react to assets i mean the feature list
is crazy long and very detailed but it's
kind of like for some people in the box
space
are shunned but standardized and a very
deep level hyper modular
and super picture rich
i'm curious if you can it if you can
paint us a picture of what the coolest
use cases that can be built on top of
725 and universal profiles this suite of
identity based systems you know what are
you what are you most excited about that
this enables
i mean this is this very similar
question like you know if you would ask
me in 2015 what do you think will happen
with tokens right it was very hard to
imagine icos i mean icos were pretty
okay they were they were straightforward
but the craziness of icos were not so
straightforward
um but d5 you know and and there was it
was clear that these things will happen
but the the shape they took the
complexity they took the markets they
created and nfts and all of these things
um in that detail level was not so easy
to match i mean we knew people can make
you know nfts we know that people will
use whatever compounded tokens and do
whatever but not in that kind of detail
same here it's such a flexible core
piece that it's very hard to imagine all
of the things i mean what's maybe
probably very
clear is a decentralized [[social media]]
for example right you can have a
decentralized blockchain based account
that's your decent or [[social media]]
account it will be your login to
websites but it will also be your social
media account but at the same time it's
also your wallet so it's all of these
things combined
um
you would probably have multiple of
those profiles some you use for
anonymity reasons other use as a public
person but you will definitely want to
stick with certain accounts because
reputation only builds onto
like verifiable and accounts that you
can actually follow and see right if
they constantly swap and change
and my son has this great idea to
constantly change his username and
discord i have a really hard time
finding him because every time i search
like his name has changed and it's
really hard to find him um
here it's you have literally a unique
identifier
that solve that root identity problem
that exactly is the reason why almost
none of the other
um
uh identity protocols really succeeded
either they just invented the [ __ ]
token or they said we are totally
generic and we're off chain which on the
end means okay where do i go look and
find two well the account or whatever
i'm looking for right
um
um but yeah december [[social media]] i
think creator economy right being a
brand on the blockchain you want to be
visible you want to be the place that
you know people know where to go when
they want to look for a new mint they
want to know and see your profile and
see oh profile you know x just created a
new uh collection or something right you
want to be able to have transparency on
chain not open c transparency
but it transparency that's cross-apps
application right it's not one app
having a profile now this every app has
the same profile now
that's why universal profiles right so
it changes the game for everything and
all of these you know doing good
projects can now happen because we can
create dials where members are visible
we have dials with the universal
profiles themselves so they will have a
profile picture and information attached
and protocols attached to what logic
attached to it to it whatever
you can now have communities run and
organize themselves in a very
transparent and very blockchain based
way
um and we haven't seen that really like
you know dallas today are discord
communities that's not a tao
it's just a discord community with a
down name
uh attack yeah
um we will have real bars let's say we
will have real decentralized communities
we will have everything that we couldn't
do so far because the identity was
missing
and nothing restricted
so yeah
well i think that um
you know i i just really fully believe
that identity is one of the key building
blocks of making the space actually
useful for everyday people
um and it seems like there's a couple
competing visions standards i'd be
curious what you think of
um like evan mcmullen's criticisms of
on-chain identities in that they don't
allow for privacy
um i'd be curious what you think of
decentralized society
um you know uh
what do you think of of the other trends
that are happening in the identity space
and where do you differ from other other
major players that are working in the
identity space in terms of vision and
execution
a lot of questions
um okay the critic point with i mean i
think lots of people in the old school
identities this space how i would call
that right in the one which was more
like before blockchain would definitely
say hey you can never put something like
this in the blockchain right
my argument would be the following first
off it's not about hard identity it's
not about an identity that's necessarily
identifying you as a person
it's about creating an identifiable
account or profile that could be an ai
could be a gamer identity it could be
whatever it doesn't need to be you as a
person so what i do i differentiate
between soft identity and hard identity
hard identity is your passport social
security everything that has to do with
your livelihood and your actual physical
person
soft identity is your internet account
your gamer account your instagram
account anything that's literally
more like a creation than it is actually
real life right it's a created persona
that could be you know looking like you
physically or could be totally abstract
today with crypto panks everybody's
totally abstract in twitter now right
everybody's back to being a pixel uh
figure
um and
so when you make i think the biggest
difference to other protocols is they
always try to solve hard identity
i don't try to solve hard identity it
will be solved through that as well but
i rather want to have soft identity
that's what everybody actually needs
really first
the thing with like
um
privacy you can have any kind of
selective revealing protocols built on
top of this right where you have certain
information that you know people can
verify you have and you only reveal it
to certain parties or you can have ck uh
snarks in some way where verify stuff
and approve things that's all possible
to build on top of this yes if you put
your face on a profile account and then
you say that's me people can watch you
on the blockchain
this is the same today right you put
your address on twitter and say that's
me guys uh i mean
people can follow you what you do in
ethereum right
um but if you put an ens name so it's
the same thing and that's actually a
problem of the technology because we
don't have fully programmable
blockchains that at the same time
totally private so we have to live with
what we have at the same time when we
look at facebook and others people are
pretty interested in magnums of public
and
i believe
if you look at look a bit more from a
philosophical point of view
if you live in a village right and you
do something at some point either
something nice or something bad or
whatever or something weird people in
this village remember right for some
period of time that you did it so as
much as this right to be forgotten is a
nice idea
um
you can also not go into the village to
everyone say hey can you please forget
that i did this because i just chose to
not want to have that memory anymore and
you all need to also forget now so if we
do things in a public space and a
blockchain is a public space
probably also makes sense that it stays
there because it was actually part of
history
um and the internet is the same it
doesn't forget either you can maybe
force google or any other platform to
not reveal it but still going to be
there somebody downloaded this took his
computer still going to be there
it would be ideal to have a blockchain
that's totally verifiable and private
but we don't have that so as long as
that's not the case
why wouldn't we now make public account
systems
because it's actually quite useful to
have specifically for
anything has to do with culture groups
dows brands creators and all of these
where
transparency variability is the absolute
most important thing like how can you
become a famous brand if you are like a
known that's somehow not going to get a
well right you want to be transparent
you want to show what you do
and honestly if you choose to be
anonymous
don't put a picture don't say it's your
account and you have your blockchain
anonymity of the day so
that's pretty much yeah there's a really
there's a really interesting episode on
bank lists in which evan mcmullen and
vitalik talk about the various merits of
soul bound tokens in vitalik's case and
off-chain the ids and verifiable
credentials
um and i think that it's an important
thing to get right so i'll just direct
listeners to to that show if they want
to learn more about identity and privacy
um i'm curious i'm curious if you've
read the decentralized society paper
fabian uh by vitalik and glenn and in
puja and if so what you think of that
vision of blockchain-based identity i
can quickly recap it if if you'd like uh
yeah please do because i have not i'm
too busy inventing that then
yeah yeah no the idea with decentralized
society which is is called like
searching for web 3's soul was the name
of the paper but um because it was all
about soul bound tokens which are
basically nfts that can't be transferred
like you know say i go to some event and
i get a nft from that event that says
that i go went to it and it can't be
transferred that makes it so that it
can't be financialized and so the
ultimate articulation of this vision is
that vitalik and glenn imagine this sort
of web of trust where say i sent you
actually i should do this now that i
think about it i should send you an nft
saying you've been a guest on the
greenville podcast and that's an
identity signal about our relationship
with each other at scale if you're
sending tokens uh whether they're poapps
or cell bound tokens to other people
there's a web of trust that we can use
to bootstrap things like civil
resistance and
um and under collateralized loans and
web 3 social networks with profiles and
stuff like that
um and so that's that's kind of the
articulation of decentralized society
and i'd be curious if we could compare
and contrast that with your vision and
what you're working on with 725 and
universal profiles if there's any
overlap it's completely overlapping what
i built is exactly the ground
structure for this so it's so universal
profiles are the soul of soul bond
tokens i personally don't really like
these kind of naming convention that
vitalik chose because he was a i guess
play war hammer game or whatever this
game was that he was into
um uh yeah world of warcraft exactly
yeah so
um
i mean i call them non-transferable
tokens i i like a bit more the logical
naming uh then it's not so in big quiz
um but if you call it songbound token
the universe broke without a soul and
and the problem right now is exactly
that there is no soul your wallet
account is not a soul this is not
something you can ever use for that
because you forget your private key and
what all your reputation is social
interactions are now stuck and gone or
uh basically it's unmanageable it's not
a reputation system that works in any
way
um or your friend gets hold of it and
now they can be you and act as you
um
so what we're missing is a soul
universal properties are the soul for
sober tokens and yes exactly what i
described before you can attach this
reputation system that could be based on
an nft or a non-transferable token that
could be based on some kind of registry
that people agreed to some kind of point
system actually i would be building
these more on top of a point system but
yes i mean for example we had a
hackathon and we gave people
um a participant nft and so on but right
now they're transferable but i mean it's
very easy to make them non-transferable
once we launch mainnet and then
something that's stuck on your profile
and the good thing is because your
profile is very hard to lose not like a
key it actually can like this society in
this vision that i was saying i'm fully
agree with this by the way was totally
able to happen and the only reason why
it couldn't happen so far is because
people like use wallet private keys as
their accounts which is obviously not
the way it can happen ever
but if you have a profile that you in
the worst case consult your recover
or you even have a third-party recovery
service you trust or you have even three
their five devices you control it from
so if like
like four are gone you still have access
or you have a dial that could gain your
access back
everything now possible right then you
can actually literally get started have
stuffed and stuck it on a profile and
literally make it unmovable you don't
even need to think about a logic anymore
of how you moved it in whatever lock
case have lost because it's unusable
um and that changes the game
so i fully agree what they're saying and
this is what i have built up the
foundation for now it's it's there it's
uh let it be to be going very soon there
to be experienced
um by people and
and by developers really and this this
is now all possible yeah it will change
the game yeah
so i'm curious um you know given that we
only have about 10 minutes left if we
can if we can start converging i'd be
curious you know
um
what what you're focused on now uh how
people can can help contribute and and
how people can get involved in building
this future that that you're working on
yeah all right um so basically we are we
will start our mainnet in the coming
months
um that's if that's basically we're
starting a new ethereum let's call it
like this because it's actually easy to
type of network just a new network
focused on the new creative economy i
don't want to see it as a competition to
ethereum it might end up being that but
i see it more as an let's call it system
network extension right now but it's
built as a new network because we need
to have this new basic standards and we
have to have this uh focus of these
people who built on these new kind of uh
setups because they enable all of these
new things that we've just talked about
in the past so we have the standards we
have the smartphone implementation we
have a browser extension you can test
out
there's a whole documentation page we
can read about all of this so if you're
developer and you want to really build
all of these things you for example
mentioned right the ones in the social
space and the in the
not detail but regen how you call that
region space uh yeah
um then this is the tool chain for doing
that it is the absolute two chain you
could use uh universal problems on any
other evm chain that's possible it's
only on the interest smart connect
standards our project sensory won't
support it out of the box obviously for
for obvious reasons
um but what's really missing is the
transaction relay services that's what
you want so and we will run one we will
have one from the get-go and another
reason why a new network is we can fund
early users we can subsidize their
profiles and we can subsidize their
initial transactions that's how you
basically get to use the blockchain
right away without any of the hassle
um what we also instigating you know
through our hackathons and others for
example the one we did at gitcoin uh is
to foreign
less services now because all of this is
standardized building one is fairly
simple so you can basically be the
mobile or phone provider or internet
service provider of the blockchain and
say come sign up with me get a free
profile and 10 million gas and then you
know subscribe next month
and that's how you get people using
blockchain without the day you know
being scared away they can also be then
the first recovery service of your
profile and all of that you know web 2
ease of use we know while at the same
time you have a full-on web3 profile and
you can click them out at any point in
time and even pay you on transaction
fees if you like just fill up your
controller key with some feed some money
and that's it so it requires a bit more
things you know that's why luxor the
mainnet with transaction relay service
initially and all of these things for
this to take off
um eventually it will triple down to
other networks as well so if you're a
developer and builder
go read the docs understand how to do
this it's not a lot of things you need
to understand if you just want to make
it the app that works with metamask
right now you literally have to change
nothing
but if you want to use the power of
universal profiles if you really want to
do something around profiles you know
just read the talks and read how you
attach information how you get
permission set permission to whatever
you want and then you can really invent
the next level uh social protocols
community protocols styles whatever else
you want and it's going to be a lot
easier for you doing that than it has
been the last five years where none of
these basic things were solved um all
right
um i'm curious you know if you can
project this out 10 years into the
future right i i know when i asked you
about like what were the ultimate use of
tokens be you're kind of like well that
would could really predict what that
would look like but you know if you
could do your best to someone who's been
on the frontier of of technology trends
like if luxo in in universal profiles
are are maximally successful what kind
of impact do you think that that has on
the world you know what is what is the
ultimate sort of north star that you're
chasing i don't know let's say in
2032 if we have you back on the green
pill podcast uh what does the world look
like at that point i mean on the end
this technology these standards will
benefit the whole blockchain space at
large not just luxo but luxo will be the
initiator of it
um what i see is basically it will
completely
disrupt society as we function today
like on a fundamental basis because you
can now self-organize
with actual real people that really can
use this new technology all that power
that web3 gives you of self-organization
of like instead of sovereignty and all
this now becomes possible and in the
hands of everyone
and it will change what i see is
really like a unification of the world
that's i'm not sure if that's in 10
years it's more like in 20 or something
or 30 maybe yeah orders will dissolve
power will dissolve how we operate on a
global scale how we you know act on
issues and decide on things we're
completely massively disrupt you can
build you know decentralized global
voting systems you can have actors and
dials that own like billions now and can
you know act globally on a fully
decentralized scale whatever way these
people and groups want and it will
completely change the game everything
will be going hyper democratic
um everything will go very well funded
too i mean this the whole world now will
actually have a lot of groups that have
a lot of very positive impact with a lot
of fun funding in all of this old world
you know structures where it was so hard
to even do an impact
um it's really it will really go to a
mass acceleration of everything and on
the end it's up to people what they do
with this technology it's a tool
anything could be done and um
um and i really hope uh it's all for the
better so we just give people and
humanity a tool of exactly the web 3
tech stack but
user friendly and accessible
um and that's going to change everything
going forward in the next
10 years for sure 20 absolutely
all right well if uh if greenpill
podcast is still around in 10 years
we'll have to have you back in into a
review of how it went but um is there
anything i didn't ask that you want to
say
uh
no i think i'm good i mean on the end
it's really it's a new i mean it's a new
technology it's a new set of standards
it's more complex than usa 20. um once
you get the concepts it's actually not
really hard to understand it makes a lot
of sense yeah it takes a little digging
initially
um once you use these things it will
become more and more clear
um it's unleashing a bit more complex
set of standards that are working in
concert together
um then what we had in the past where
somebody comes up with one stand-up
proposal and says hey here one smart
contract 3 function let's go and now
it's a bit more complex but it's
actually very modular very extensible
very
structured but at the same time
extremely flexible and
i have thought a lot about this stuff on
my team and we built this out thought a
lot about this we are blown away
ourselves every single time of the
flexibility in what you could now build
like even for us it's not clear all the
stuff that could be built now so
i think there would be some years of
people really diving into this but it's
going to be very interesting to watch
what people build and that's really what
excites me seeing how people will use
this and where does always be going and
uh
yeah it's probably very crazy
so i also want to watch back you know in
10 years and i see all the stuff see how
right you got it uh through this
technology it's going to be very
interesting
i mean we've seen names of 20 right
we've seen it with all of the other
stuff in the recent years i mean looking
back here and it's crazy if you look at
this what happened
um it was not totally like that obvious
um you know back in the day when we like
just came up with it so
it would be like this again just
massively on a larger scale because you
can do a lot more things right a lot
more things
um
because identity is the missing piece
really that fundamental piece has been
missing in the blockchain space
and
i do a claim now i solved it but let's
see in a few months and years
great well where can people find you
online fabian
okay luxo.network is the website we have
a discord community luxo underscore io
is the twitter uh my twitter is at
findura or just search for my name on
twitter
um
and uh yeah just twitter is really the
space that i communicate likes to
communicates uh discord and just follow
follow the mainnet launch follow the the
tech use it play around create a profile
you know start to care about your
profile and use it and uh
and there we go
amazing fabian thanks so much for
joining us and telling us your vision
for luxo and universal profiles and um
to get out there on crypto twitter
thanks for having me
foreign
[music]