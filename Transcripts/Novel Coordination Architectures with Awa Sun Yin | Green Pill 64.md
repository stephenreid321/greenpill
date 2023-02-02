---
youtube_id: 2RSf2bRiieU
tags: transcript
---

foreign
[music]
ation looks good on the pod today i have
a very special episode with my friend
awa the co-founder of anoma what is a
noma and why does it matter anoma is a
application a decentralized application
architecture that allows for complex
applications to be built with
fundamentally new primitives so
basically the fundamental atomic unit of
anoma is the intent which is basically
something you want to do a financial
transfer that you want to do i want to
turn a token x into token y i want to
send tokens to person x i want to trade
an nft for tokens
um or i want to say hey fund a quadratic
funding ground so you bought broadcast
an intent which is basically like a json
blob and multiple users can create their
multiple intents and then there's this
gossip layer where there's an agent
called a solver that goes around and
collapses the intents together into
outcomes that are um collapsed on chain
so basically why why is this a
fundamentally new architecture for
building decentralized applications but
now the gossip layer provides a way of
doing counterparty discovery that's
totally decentralized and scalable so we
talk in this episode about not just like
what would it look like to build a dex
on top of a noma where the counterparty
discovery is decentralized using enoma's
gossip layer but also nft marketplaces
[[quadratic funding]] on top of a noma l2
sequencers just the general design space
of decentralized coordination and this
is a really interesting episode for me
because i believe that the more money
legos there are for creating
decentralized coordination the more we
can solve [[coordination failure|coordination failures]] solve
multiple or traps create a more
regenerative crypto economic world i
just really feel this this this this
thesis coming together that the more
money legos there are for regen crypto
the more we can make crypto regenerative
the more we can regenerate the world
with crypto and you know like bitcoin's
new grants protocol is kind of this
money lego that allows any dow to use
[[quadratic funding]] in their ecosystem
anoma is kind of a new decentralized
architecture that makes it easier to do
decentralized coordination and a lot of
these [[coordination failure|coordination failures]] are
multipolar traps or multi-agent systems
that require better tools for
decentralized coordination if we're
going to build the apps that are going
to that are gonna they're gonna solve
this space so and anyway a little
preview of the episode there for you i
was just so uh technical and brilliant
and i'm a big fan of a noma's
architecture if you've been attending
shelling point or been a part of the
regen web3 movement then maybe you've
heard of them but if this is your first
time i think you're kind of in for a
treat because it breaks my brain to
think about the way a noma has
architected things in the way that that
could complement a whole ecosystem of
regenerative crypto economic projects do
you know any regenerative crypto
economics projects and on uh so it's all
coordination it always has been andoma
is a new tool for coordination and i'm
really excited to give you this episode
of with the enoma team enjoy working in
web 3 is awesome it's freeing powerful
and so much fun but working outside of
the typical w-2 employee structure is a
deal breaker for so many opolis is
helping the self-sovern worker focus on
what they do best their work while
managing the back end for them there is
a lot of nation-state overhead when
working in web 3 and opolis takes care
of all of the back end stuff freeing you
up to do what you do best obelis
leverages group buying power through a
community employment co-op helping you
save 20 to 50 percent on high quality
affordable healthcare options through
cigna so do what you love and maintain
your financial security with opolis you
must be authorized to work in the united
states to receive office benefits but
alplus is expanding its services to
canada starting on january 1st 2023. so
book a 30-minute consultation with the
oculus experts and join opolis by
december 31st of 2022 and get a thousand
work tokens and a thousand bank tokens
when you sign up so go to
connect.opolis.com
bankless to get started goldfinch is a
decentralized credit protocol with a
mission to connect the world's capital
to the world's growth goldfinch focuses
on real yields from real companies so
start lending your usdc to real
businesses driving growth worldwide
goldfinches borrowers are proven
fintechs and credit funds in emerging
markets who need access to goldfinches
capital to drive economic growth in
regions faced with barriers to financial
access in just under two years goldfinch
has loaned over 100 million usdc
reaching over a million people in
businesses across 28 countries goldfinch
is doing what d5 was always meant to do
expanding financial access to those who
have historically been shut out of the
tradpy system so become a goldfinch
member to put your uscc to work
empowering real businesses growth join
goldfinch's new member vaults to be an
active investor and take part in
supporting goldfish's security and
expansion receive yield enhancements
generated by protocol revenue plus
access exclusive communication channels
and more so go to goldfinch.finance to
get started
hey hey how's it going
hey it's going well how about you pretty
good really excited for this episode
we've been circling each other for a
little while and you've kind of pulled
me aside and told me about what you're
working on i think it's really exciting
so looking forward to unpacking it this
episode so with that is my tee off i
will ask you what is a noma
so anoma and we go straight to the point
right
um so tldr phonoma is
um it is a third generation of how you
can architect blockchains and it is
um architecturally something that allows
you to build all these modern
applications that you see for example
nft marketplaces bitcoin quality funding
rounds all these complex applications
um that require kind of party discovery
and solving so it allows us to build all
this uh applications but without
requiring any centralization point in
any of the components that would be one
part of it but another advantage of this
architecture is that it does expose a
bunch of novel primitives and it allows
you to build applications that you will
have a really really hard time in some
cases it would be impossible to build on
some of the existing
um programmable settlement architectures
got it so um it sounds like you're
building a new coordination architecture
that kind of gives new primitives that
are just kind of elegant for a more
decentralized world namely i mean
counterparty discovery being baked into
the protocol i think is really
interesting so could we dig a little bit
deeper yeah
i think we're on [[public good|public goods]] funding
and [[quadratic voting]] and plural money
they have been i've been reading a lot
um all the publications from the radical
exchange group and i'm really excited
about it because right these are the
kinds of ideas and applications that
benefit from animal architecture the
most and this is primarily because
um the key if you need to remember one
thing about anoma is that the
fundamental unit in the normal
architecture it is not a transaction
like a finalized thing that can be
settled on chain it is the intense
and the intent is basically a
description of an individual's uh
desired end state so the users do not
define like i this is my code stack of
[[smart contract|smart contracts]] so you just don't define
like
um i want to send
um i want to trade one bitcoin for it
but they want what they actually signing
off is the end state that they're okay
with it
um and whims to start with the intense
centricity of this architecture
um you can actually include way more
information in the user intents
um imagine something like where you are
no longer compressing any more things
into like
um transactions but where you are for
example
um that's a really good example for this
would be a ballot for a quadratic
funding of voting
um where you where the user with with
the beauty of um this mechanism is that
you're not voting yes or no or this or
that you're voting this is my list of
preferred projects that i want to funds
and based on how much you want to
allocate for my total budget i'm
actually expressing a more complex set
of
of the values
what's the next step after an intent is
broadcast is there someone that settles
settles that like finds does the
counterparty discovery and then settles
that to an actual layer one chain
transaction yeah so um actually what
happens when you when the users multiple
users create different intents and then
they might uh that might in the end uh
be part of a uh of an application
but um what happens is that the intense
get gossiped around in what we call the
intake gossip layer disappeared peer
network that is not consensus relevant
and
um any peer can be a gossip node and you
can like gossip it around you can choose
specific network kids platers where you
think your intent is more relevant for
um this is all up to the user and up to
the customer operators so this creates a
kind of a set that is
um you won't have a global view of all
the available intents but they all are
floating around waiting to be settled
and remember intents cannot be set up by
themselves because they describe what
the end state is but they do not
describe they cannot be they're not
finalized transactions so they cannot be
settled per se
um so at the cost of layer they are
there is a group of asians what we call
them we call them solvers and solvers
are a crucial
um kind of network asians where they
have been sended to monitor the intent
gossip layer and then try to figure out
which intents can be combined in a way
that they satisfy each other
so just to give you like a brief exam it
goes more a simple example to follow
through how the astronomics work
um think of an intent where you want to
swap
um if for bitcoin and i'm just using
this as an example but in reality
intents can be arbitrary values can be
even arbitrary code
um it's just like the swapping is easy
to for people to grasp
um the intent actually says i'm okay
with the end state where i have minus
one bitcoin as long as i have plus a
thousand eight this is everything that
in him says right right this goes into
the gossip layer
and then the solvers look at this and
then they also try to find like okay
there's actually two other intents that
indirectly
um uh can be uh combined into a valid
transaction that can be found actually
settled
um this might be the case for a simple
uh swap but they might also be the case
where a solver ends up combining up to
hundreds of thousands of intents and
then in the end
um they all all those intents are
gathered and they crafted
um a transaction that is valid and
satisfies that the intents of thousands
of individuals
so the solver a convenient combined with
user intents the intend gospel player
and activity of the solver is what
enables the centralized counterpartic
discovery and distributed solving and at
the end of the solvers activities what
you end up with is a transaction that
can be settled on chain and afterwards
it follows
um costa demento and then follows
circumstances
right okay
um
so i mean i think that you know this is
quite a novel architecture in that it's
got this intent gossip layer which isn't
it has to have to do with con consensus
but it's almost like you've kind of got
this
um marketplace in which different agents
can broadcast intents and then there can
kind of be like mini marketplaces where
you have different types of solvers that
specialize in collapsing different types
of intents and you can start with
applications that we already know that
are good for blockchains like trading
one token for another
or one nft for or for tokens
um but we could also do more complicated
multi-agent and maybe hundreds of agent
type of intent solving applications am i
saying that back to you right yes we
actually got the high level idea really
correctly as in for example even when it
comes to uh fungible and nft start
trading that you such such thing as like
an order book you don't even need that
like when you're creating 10 you're kind
of like creating an on-demand order
before whatever it is that you want to
trade that's like one characteristic
that is really flexible from the user
side and there is no need for it because
the protocol doesn't understand what a
trade is or where the nasa is and
there's no need for the protocol to
understand that
um and then coming to an example of uh
that you mentioned multiple agents was
like just two parties in the end
situated or something like that
um imagine something like and this is
the early stage i kind of want you guys
to think about the framework first and
get that and then from and then next
time we can jam about like some cool
applications that we could build with
that but even an application like git
coin it's already multiple asians right
um the credit defining realms has at
least three kinds of agents ones are the
grams so the projects i want to see
profoundly then we have the funding
partners that will be funding the
matching posts and you have the
contributors
yeah even it's more complicated you for
example with the matching pole funders
partners they have like giving
categories they own right yeah like so
it should have just started a decks back
in the day uh but yes [[quadratic funding]]
is powerful
um yeah sorry continue yeah so um i'd
actually remember that you mentioned me
one of your first episodes in this
podcast that
um one problem with the bitcoin team is
that you actually have to do tons of
compute so like and that um with the
finalists list the payments based on the
matching poll and the contributions to
individuals like you end up with this
massive
um end-to-end dimensional matrix so you
have to solve right and
um that can make me that actually is a
very interesting thing because in
anonymous model an interesting idea
would be that
um bitcoin would not have to become this
party that
um uh kind of like allows or can it
becomes this kind of like facilitator
for projects or individuals or our
funding partners instead all of that
could be autonomous
and then this model what bitcoin will
specialize in which is incredibly hard
and at the moment you there is no formal
market for it is solving for qf rounds
which is what you guys are already doing
and you're developing extremely hard
code to like try to like produces
compute and solve like the final key of
round
yeah totally it kind of like
it would it would turn bitcoin and or or
maybe like whoever arranges the
[[quadratic funding]] matching pool
um into just an intent that's broadcast
and then get coin becomes maybe the
first solver on the network and maybe is
this a marketing layer in order to
facilitate people to broadcast to those
intent but we no longer have to run this
yeah the interesting thing exactly so
the interesting thing is would be that
basically all those agents will be
issuing their own intents into this
peer-to-peer system and there will be
some kind of like
um
um the commission kind of identifier
that allows you to tell okay all this
intents are related to the next key gr
round
and but get coins broadband would no
longer be this one that
um like facilitates or uh like kind of
enables people to participate or not
bitcoin which is the friend that would
just be visualizing what's going on in
the peer-to-peer layer so there's a lot
more permission on maps and on the other
hand you could formalize it in a way
where you say for example okay we have
bitcoin that is operating this
incredibly complex but specialized
solver for qf realms uh there's a ton of
compute and specialized software that we
have to write to make this efficient
um if you want to use us then you can
even like
um you can even request or give the
option for the different participants in
the network to fund the solving of
bitcoin so for example intents could
include a small fee that gets in the end
um paid out to bitcoin the git consolver
if the efron was actually you settled
right okay so instead of so grant's
protocol is about to launch which is the
new decentralized version of get coin
grants i i'm told i only have public
information about this talk to what i've
seen on the get coinblog but basically
instead of having a state machine where
everyone adds their transactions to a
[[smart contract]] and then uh someone goes
in and when the round end turns that
into a qf matching output which is very
computationally intensive and then
everyone can claim their payouts you
would have in the inoma style
architecture you would have people
broadcasting intents but are they
intense just like i'm picturing in my
mind as like just like a json blob like
yeah
like i will give one one uh die to
project x on the condition that i get at
least 25 matching for it you can do
something like that yes yeah i'm just
making up a very sky level architecture
here but um and then there's also
matching uh pool contributions where
people say i will contribute 25k 50k to
this matching pool there's intensive
what goes in a matching pool that's
maybe signed by bitcoin or maybe we
could further decentralize that and then
at the end of the round basically all of
the intensor kind of capture the 700 000
contributions per quarter so i don't
know if we would if there would be like
a rolling solver that would have them or
if they would all be solved at the end
of the round once we have all the data
on the table there's a lot of books
ability yeah would be able to choose how
you handle that
got it so instead of a state machine
basically on the [[smart contract]] you have
this intent gossip layer that is sort of
the fertile ground on upon which this
happens
and and um i know my state machine is
quite unique it utilized on a different
design for [[smart contract|smart contracts]] what we call
validity predicates this is uh the
difference is that
um we up we maximize the verification on
chain but the computation and execution
um is as often as possible and um this
is what makes it also
um it's more efficient with for example
parallel execution
but um what would happen then is that
once the git consoler submits this
transaction that finalizes this round
um all the payouts get triggered fully
on chain all the intents get fully
settled
and there is no further involvement uh
from any of the teams
um i want to take a step back and just
say out loud why i find this
architecture really elegant
um and and i want to get your reaction
to that so uh i know that i'm associated
with this this meme about coordination
and how it's all coordination and i
believe that fundamentally that web3 is
going to enable new systems of
[[collective intelligence]] in which
multi-agent systems can come together
and uh create outcomes that are greater
than the sum of their parts in them and
i believe that web 3 is a new primitive
or we can now transfer financial value
and so and we can do decentralized
governance over these systems so we can
build things that are buy of and for the
people with web3 that's like point one
of why i'm just excited about the whole
space but building upon that there's
this category of things that are called
[[coordination failure|coordination failures]]
um and they're also called uh
multipolar traps and an example of a
multipolar trap is
um is basically like oh i like open i
like [[open source]] software it's uh it
creates 400 billion dollars per year in
economic value and anytime i need to
build a new website i just do it with
[[open source]] i download nginx as my web
server i guess postgres has my database
server
um or actually a set of decentralized
examples of this the graph uh and
eve.limo are these [[open source]] tools and
um but part of the problem is that i get
those tools for free and so there's no
incentive for me to pay the maintainers
of those tools and that's the first poll
of what's called the multipolar trap
problem which is basically there's no
incentive for the system to regenerate
itself because the [[open source]] is
available for free online but the second
poll of the multipolar trap is that if
everyone free rides on [[open source]]
software or any [[public good]] but i'm just
using [[open source]] because that's you
know where bitcoin started and where i
started in this space
um the first poll is why i'm getting
this for free why would i pay for it and
then the second poll is if enough agents
free ride on it then that causes
maintainer burnout people quit their
jobs on [[open source]] and they go work for
like jp morgan or something like
that
um and that's the second poll of the
multipolar trap which is basically like
the system collapses because there's a
lack of incentive and then you're in
this place where like [[open source]]
software is unsecure under maintained
underfunded and and that's how you get
to the multipolar trap where open
source can simultaneously be creating
400 billion dollars per year in economic
value and also there's no way to
coordinate outcomes of it and because i
it feels like a noma is an architecture
for me for solving multipolar traps
where i can say conditionally like okay
i don't really want to pay for this but
i also don't want it to collapse i'll
broadcast an intent where if other
agents agree to support this system then
um we can all do it do it together and
anoma feels like an architecture for me
for solving multipolar traps how does
that feel to you
you're gonna make a kofunda christopher
really happy when he listens to this
episode if he
um we have a vision paper that talks
about this and actually the initial
paper of anoma did speak a lot of our
coordination problems and multiple of
traps specifically
and we were like the entire background
story was that we're trying to pursue uh
the design and of actually the serious
creation of infrastructure that allow
people to coordinate we can avoid
looking at existing architectures and
like settlement would not be enough and
that kind of inspired us to come with
exercise architecture that is not only
flexible from an end to end in a
decentralized fashion but also where the
intents allow you to express in like
what you usually you want the outcomes
that you want in a way more complex
manner and it would allow you to create
this mechanisms that could solve with
the polar traps as you have described
got it um so have you all iterated away
from that sort of framing as the white
paper has evolved is is that still a
part of the vision it is still pretty
vision division papers still on a
website
um the the new white paper that we have
been uh sharing with people at the
conference list maybe you got a physical
copy that new white paper is just a
little bit more focused into the
architectural efficiencies in the in the
industry so it does talk more about
um ifanoma we're live tomorrow what it
is so you can fully decentralize or
applications will benefit the most and
why a new applications you can build
but that is just to
um just because the framework is so
different from what we all used to like
ever since we are right now at the stage
where simmons when vitalik was trying to
explain ethereum so all people who were
used to cryptocurrency protocols and
scriptable settlement like at that time
i just can't imagine how much how
challenging it was like so to to tell
people who all they knew about were hit
the bitcoin and color coins most or like
the construction change
um and then vitality came i kind of was
to say like you can do something that's
a lot more expressive at the same layer
and so the challenge that we had in the
past year and why we kind of changed the
way we're communicating about anoma is
the case we realized that our long-term
goals were a little bit far out so like
you guys are showing a few groups that's
like to think about [[coordination failure]]
and coordination problems multiple of
traps like i was incredibly excited to
run it to you guys in denver sean point
um but still still i think when you want
to get people's understanding of how
powerful that is we kind of want to
focus in the short term in some of these
applications you can build just to get
people used to different work and
there's architecture so they can start
later on thinking about okay there's a
lot more yet to be built that we today
don't know which other applications that
could be built with us
yo well i mean just to speak to the
this market i mean i know i used in my
example [[open source]] software but i've
kind of been [[public good|public goods]] build since i
got into this space and i've learned
about uh [[climate change]] and the funding
of journalism and basically all of our
global national local [[public good|public goods]] and
digital [[public good|public goods]]
um are in some form composed in this
multipolar trap problem uh coordination
failures [[public good|public goods]] funding failures
are multipolar trap failures and that
it just makes me exciting that excited
that
um you know when there tend to be money
legos in an area it means that there's
being advancements made in solving some
of these problems and uh i don't know
that's that's why i know my first struck
a chord with me is just wow the amount
of important problems in the world that
are multipolar traps uh is very vast
and they're also existential to humanity
and and so i think that's what got me
really excited about this direction when
i first learned about you all yeah
um and actually the discovery that we
had was that while we're building those
systems to bring more tools for
coordination and more large-scale
coordination for people we also realize
the same infrastructure and the same
properties that these protocol exposes
are the ones that most modern and
interesting applications in the
centralized world need
the world has woken up to refi and cello
is here for it cello is the layer one
for the [[regenerative finance]] movement
it's fast planet positive and built for
the real world cello has committed to
producing a sustainable future from day
one and has built its technology around
one of the lowest carbon impact
consensus mechanisms and is the world's
first carbon negative evm compatible
layer 1 blockchain cello is a movement
to create the conditions of prosperity
for everyone whether it's tokenizing
carbon credits with toucan providing
capital to underserved communities with
unicorn or building for millions of
users around the globe cello was created
to transform crypto enthusiasts into a
movement of change makers follow along
on twitter at celloorg to learn more
about how cello is accelerating refi for
a positive lasting impact on people
communities and the planet and if you're
a builder interested in refi be sure to
join the build with cello hackathon live
now with a prize pool of over a hundred
thousand dollars coin shift is a leading
treasury management and infrastructure
platform for dows and crypto businesses
that need to manage their treasury
operations every crypto org needs to
manage this treasury and coin shift
offers a simple flexible and efficient
multi-chain treasury management platform
built on top of the highly secure gnosis
safe with coin shift your organization
can go from primitive single chain
treasury management to expressive
flexible and multi-chain treasury
features such as global user management
global contacts proposal management and
many other features that can be shared
across an entire organization allowing
users to save time and reduce
operational burdens and gas costs
coinshift even has data tools like
account reporting across the seven
chains on which it operates used by
industry powerhouses such as uniswap
grants balancer consensus and massari
coin shift is speeding up their
coordination and efficiency of the
organizations that use it you have to
keep up with the frontier and coin shift
makes that easy so sign up at
coinshift.xyzbanklist tell me about the
state of noma and the projects like when
does when does it launch uh when can we
start playing with applications that use
it does it feel like adapt how like that
kind of stuff yeah
um so i would say like at the moment my
first mission is to like tell more
people about how we're thinking about
anoma as like the protocol
um and i'm what i i'm really focusing
personally is and try to explore which
applications we should build first as
like examples similar to how ethereum
will launched with three applications
um we're looking at just picking three
applications that currently exist as in
for example i really hope to have
um something like looks like fun job
token trading and the marketplaceless
but i kind of want to have something
that is not defy and so i'm really
excited to build for example bitcoin as
one of the example applications because
this one is really complex right now
already
and it will benefit a lot from anoma
um and then at the same time we're
exploring a bunch of other novel
applications at the moment thinking
about
um
in the world of multivariant
multivariable bartering as like you can
barter anything if you can express it in
an intense and there is no you just
create your intended and see what
happens later and it might be subtle
might not be settled but you can barter
with anything
and
um another thing that we're exploiting
with is for example a multi-dimensional
dials so those that can handle more
um
on one hand also privacy so like
composable privacy and having one
application the ability to easily handle
which parts transparent data and which
parts of private data
um this is like another advantage of
enormous architecture that allows you to
allows developers and users to reason
through privacy in a very easy way
um and there's just many other
applications that we're just thinking
about right now and that this right now
we don't know which one is gonna be the
ones that people like the most but we're
gonna go for it is
um by mid next year we're going to have
a uh
um attachment with those applications
already live so
um and then people will be able to play
with them
great
um yeah well i mean i i can of course
make interest to get calling people if
you want to talk about uh building a
[[quadratic funding]] application because i
i almost think that
um at the moment uh so actually we're
chatting with the bitcoin guys because
it's not announcing and i was wondering
how that's the new it can look like
um but suddenly it is really important
for a norma to see teams like bitcoin
and a bunch of other teams that are
doing research into interesting
governance mechanisms interesting like
forms of poor money these are all
applications that at glance clearly
benefits from from aloma but it's also
for us to kind of like make sure that um
because it's new we kind of don't expect
that people will be the ones that
straight off will build on um the
application so we'll be building
directly the intent formats the validity
predicates and provide the right sdk for
solver in a way where
um in the case bitcoin the hardest part
it would be which is the one that the
computes the eqf results the heart we
cannot write but at least we can provide
it in a way where you can just use that
code
um and then directly operate a solver
got it
cool well yeah i mean i think that it'd
be interesting to see the new
decentralized modular
uh ecosystem if uh of git grants
protocol what the intersection of that
is with noma is there any sort of
switching costs like say i'm using a
d-app on ethereum today most of our
audience is on ethereum but we also have
people on cosmos and solana uh who
listen i'm wondering if there's any sort
of switching costs uh does bitcoin
grants on the new decentralized grants
protocol feel just like a d-app that is
on a noma
so architecturally the way we are
thinking about anoma is we're building
and deploying the global a year one but
you can actually use the same globally
one as a layer 1.5 if for example you
want to keep the encore on on ethereum
which i think makes a lot of sense a big
part of the community around bitcoin is
um cares a lot about ethereum there's no
reason why
it makes no sense why you have supports
it um so the way you would use it that
way is that you will get the kind of
part of discovery and distributed
solving part in the end you're producing
a transaction that is later on set on
directly on ethereum so on one hand you
get
um the entire decentralization part
until that but then you can still do the
final payouts
um using ethereum and some of this
infrastructure has already been built
for the other protocol which is nevada
um this is this uh trustless
um two-way bridge that we have built and
then anoma could also use this as like
the bridge protocol for it
got it so i would say like
um there will be some ux straight ups
because
um i normally layer one for adapt has an
incredibly uh straightforward ux where
we want to basically once you have
created an intense it will be settled as
it was described so this kind of
declarative application declarative
paradigm for applications which in my
mind i think is very important for if
you want
any all these applications to ever reach
mass adoption because otherwise the
moment in order to use any of the steps
or protocols securely or privately i
need to understand so well then the line
infrastructure the privacy and then
everything how integrates with like the
front ends with infrastructure so that's
infusible
um so the benefit of using anoma or
billion anonymous la1 is that you get
this entire declarative uh paradigm for
your dad but if you um just wanted to
decentralize specific component think of
for example not just bitcoin but also
openc or the optimistic or secure
relapse at the moment have centralized
sequences then they could use the number
stack to produce the final state
translation for ethereum and then that
will be passed through over the year the
bridge got it okay so in my in my mind
i've been thinking of this as mostly an
application layer phenomena but you
could actually compose parts of layer
choose uh and which are more protocol
level uh with this with this application
with this architecture did i hear that
right
um it's more that you can really pick
and choose which part it is that you
wanna
um the thing is that about normal is
that it does offer things that no other
um solutions don't offer kind of product
discovery or distributor solving but
anything any application that might need
that part can still in the end choose
where to finally settle right and this
is like the layer one when f of 1.5
approach where uh you're not doing the
final cinnamon but you are doing
different ethereum you can even go a
step further and say let's think of a
world where ethereum
um a really i think it was incredibly
valuable because of the security model
and you want to rent as much security
from ethereum is validators as possible
you can even deploy anoma as the layer 2
and ethereum where the entire execution
um gets validated on ethereum as a chain
[music]
got it
um
really can't wait to see what this
ecosystem turns into and you know my
whole theory on on
one of my one of my sort of thinkings
about regenerative crypto is that the
more money legos we have for doing
regenerative crypto the more
regenerative crypto will exist the more
crypto regenerates the world and it's
kind of this domino's effect and and you
know i think of like the quadratic
funding protocol the bitcoins building
and you know other [[quadratic funding]]
protocols as being core money legos for
salt for creating more coordination for
creating more region stuff and it feels
like a noma for me is in that is in that
category so can't wait to see what it
looks like at maturity
is there anything else within this
design space of solving multipolar
traps that really excites you or any
anything that i didn't ask that you want
to say
um i yeah we didn't get to touch panama
at all is that something that interests
you or it should let's get into it
okay so
um we're actually working on two
protocols one is anoma which is an
entire architecture
um it's for adapts but then they use
this auto protocol what do we call
nevada
and the thing that you guys might find
more interesting about namara is that we
are thinking of privacy in this protocol
as a [[public good]]
and um so what the protocol does is very
simple it if no matter what assets do
you want to use as means of exchange so
as tokens or entities or any kind of
assets that has been originated on
ethereum or any
um fastenality enable chain
um those you can use as money where you
get the privacy guarantees as the cash
has so you enables full shield that
transfers it even allows you to retrofit
privacy even if it originating chain did
not have uh privacy natively speaking
um so it's a so the main purpose is to
offer asset diagnostic privacy but
um the other characteristic about how
we're thinking about the protocol is
um i think fundamentally so far we'll be
thinking of our privacy as a future but
it is more right to think about it as a
[[public good]] because the future is useful
as independently but privacy is not if
only one person uses it because the
limited sets are weak if they are
there's not a lot of volume usage in
there
um so privacy by the nevada protocol is
regarded as a [[public good]] in the sense
of
um it is built in design in a way where
you cannot exclude access it's not
excludable and on the other hand it is
clearly anti-rivers [[public good]] because
more people use the should look set
um and the contribute with different
kinds of assets the stronger the
priority guarantees every individual
gets from it
um so we are experimenting with a bunch
of funding mechanisms so the protocol
itself we fund the shielded set so if
you use if you choose to use shield
transfers over transparent transfers the
protocol will reward you with um with
something and then it has also a its own
governance mechanism that the person
kind of um is a limited form of liquid
democracy where you can select a public
goods funding console that can allocate
as well parts of the treasury to find
different kinds of [[public good|public goods]] that
could be privacy but it could also be
software bitcoin art anything else
yeah
um it feels like a kind of core
compliment to anoma to have this privacy
preserving layer one uh technology next
to it and it seems like it's gonna just
allow an enoma to do more things in in
more places but i think the privacy
thing is actually a really important one
to drill in on because if we're
broadcasting all of these intents to
each other in what ways can we reveal
the intent and enable a solver to solve
them but also not reveal too much about
ourselves and you know in poker if you
broadcast your intent you're actually
losing the game and so there's there's
kind of like a a line that you have to
walk there and i think it's great that
you're building infrastructure for it
yeah so actually i there's two points i
want to remark related to namata um the
way we're looking at the mata and how it
relates in the future of melanoma is
more that it is an immediate step to get
people in the decentralized world to be
more used to some of the properties that
we have recently unlocked such as the
assets can freely move from the
protocols through which they were
originating and you can use them in
different chains like namata to gain
some features like privacy that you
could not get in the originating chain
so i think right now we have seen some
protocols live in bridges but i think so
far it's still in its infancy we haven't
established a good president where
people truly understand how a model
chain in a crushing world looks like
that's one thing and the other thing is
privacy but
um this what you mention now about
intents and privacy it's actually uh
right
um so the i skipped this part but the
state machine of fanoma is is
um very unique in the way that it
handles different kinds of privacy
states so it handles transparent i know
my issues wasn't but
um for shielded anoma in privateinoma it
depends like it deploys other kinds of
cryptography to be able to still verify
those kinds of intents and
um this is true like at the moment with
just transparent aroma you will have the
you will lose privacy even at the intent
level because both the who and the what
of the intents will be fully readable
change just like right now on any
blockchain
um but already with the with tiger the
unified execution environment we can
make at least the intense be shielded
and shielded means that the who is kept
fully private and celebrate ends and
even the the what however has to be
transparent because of the reason that
you mentioned which is solvers need to
be able to understand what the intent is
in order to find which other intents can
be combined but we are looking into
making an intent fully fully private and
at the moment we are designing tag in a
way that is able to leverage some kind
of homomorphic encryption so that um
when you create an intent it's fully
fully encrypted so nobody can read it
you pass it along to another person the
other person doesn't compute to them so
that's it but
um sadly the state of fhe is still a bit
early and
um we don't know how this right now
seems to be the right direction so
enable fully private intents but at the
moment
um it is not practical
but there is a world so you like to have
like fully private and online if you
wanted to but i think the motion before
we say we need privacy or we do not need
privacy i think
um the most exciting thing about anoma
is that it approaches privacy from more
developers perspective as in okay what
do applications need and applications do
not need versus like the korean approach
which is always transparent always
private it's more to make it easier for
applications to reason through what
parts need to be private when and what
parts would be public one
mm-hmm
yeah
um it just feels like there's a whole
world of cryptography and zero knowledge
proofs and homomorphic encryption that
is going to be one positive externality
of all the stuff that's going on in this
space is the research into that that and
i and i agree with what you said about
privacy being a [[public good]] i think uh
it's really foundational that y'all are
building that into the infrastructure of
anoma and the the projects you're
working on is there anything else that
you want to say that i didn't ask i'm
just going to ask open any questions
because i feel like you understand this
design space way better than me if you
know of more teams that are exploiting
building all these interesting ideas and
coordination mechanisms but they are
definitely hitting some barriers
constraints with the existing
architectures i'll be really interested
in just using them as source of
inspiration
um because for us when you build a
protocol you are making the design
decisions so that you can enable as much
as possible even the things that we
don't even know that people want to
build
um but being able to pick up some
applications especially not just c5
applications even though we know people
want to use them
um i will i would really like to be able
to pick more applications as examples
that are more in the realm of uh better
coordination mechanisms better public
good scientific mechanisms and better
governors mechanisms or anything well it
feels like you've built the the legos
and now it's a matter of evangelizing
them and building an ecosystem around
them and so if i'm a builder out there
that's listening to the greenpill pod
maybe a regen builder which is most of
our audience where do we where do we go
to to learn more about anoma and how to
build on top of it so the first step is
certainly to get used to this framework
and stop thinking about this and you
will be breaking your current
understanding of how like the
centralized applications work and this
isn't necessary this is going to be
necessary for a step
um so the thing i recommend the most to
read is the animal white paper it is a
draft but it does actually talk about
even gitcoin is an application i didn't
finish this draft yet and i want to talk
a little bit more about other
applications but um if you just read the
first pages of the white paper it will
definitely give you the right framework
from the get-go and
um just stay tuned by looking at uh i
just want to learn some twitter and then
once it is ready to import and showcase
some of these applications that we were
built
um you can already start playing with it
beautiful
all right and where can people find you
personally online
on twitter
we'll have a link in your in the show
notes here it's uh awasan yin is your is
your twitter handle so we'll have a
message on it
cool all right well thanks so much for
coming on the greenpill pod really
excited to see what what is built on a
noma and maybe we can have you back in a
year or two and do a retrospective on
all the things we learned and the cool
stuff that's been built there yeah
thanks for having me it was really fun
you bet
[music]