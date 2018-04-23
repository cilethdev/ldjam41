/// @desc this is used to create the dialogues that will be used on the phone

var output = [];
var i = 0;
var event;
var him = true;
var her = false;

// color
event = array_create(7);
event[0] = "My favorite color is white. what is your favorite color?";
//responses
event[1] = "Say your favorite";
event[2] = "Copy her color";
event[3] = "White isn't a color";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"My favorite color is red.");
event[4] = PhoneAddMessage(event[4],her,	"Nice!");
event[4] = PhoneAddMessage(event[4],her,	"I like red as well!");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"What a coincidence! My favorite color is white as well.");
event[5] = PhoneAddMessage(event[5],her,	"Wow...");
event[5] = PhoneAddMessage(event[5],her,	"that's cool.");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"Technically white isn't a color.  It is actually a shade.  So is black.");
event[6] = PhoneAddMessage(event[6],him,	"lol");
event[6] = PhoneAddMessage(event[6],her,	"...");
event[6] = PhoneAddMessage(event[6],her,	"what the #@$% dude.");
event[6] = PhoneAddMessage(event[6],her,	"I like white ok.");
output[i++] = event;

// friend of taylor
event = array_create(7);
event[0] = "I'm a mutual friend of Taylor's by the way...Didn't want it to be a COMPLETELY blind date, so I thought I'd say hi :)";
//responses
event[1] = "Excited to see you";
event[2] = "Wrong number?";
event[3] = "Hi Taylor";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"Hello, excited to finally meet you");
event[4] = PhoneAddMessage(event[4],him,	"BTW... where are we meeting again?");
event[4] = PhoneAddMessage(event[4],her,	"I think we decided on the Impresso Cafe on 5th.");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"I think you may have the wrong number...");
event[5] = PhoneAddMessage(event[5],her,	"Haha, sorry for texting out of the blue");
event[5] = PhoneAddMessage(event[5],her,	"You remember Taylor right?");
event[5] = PhoneAddMessage(event[5],her,	"Your army buddy");
event[5] = PhoneAddMessage(event[5],him,	"How could I forget");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"Hello Taylor!");
event[6] = PhoneAddMessage(event[6],him,	"Thanks for reaching out, really excited to meet you tonight!");
event[6] = PhoneAddMessage(event[6],her,	"um");
event[6] = PhoneAddMessage(event[6],her,	"no... You do remember Taylor right? You're army buddy?");
output[i++] = event;

// where are we going?
event = array_create(7);
event[0] = "Where were we meeting again tonight?";
//responses
event[1] = "Does Impresso work";
event[2] = "Impresso!";
event[3] = "Dive bar ;)";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"I think we decided on Impresso Cafe on 5th Street?");
event[4] = PhoneAddMessage(event[4],him,	"Around 4, does that work for you?");
event[4] = PhoneAddMessage(event[4],her,	"Isn't that the cute cat cafe I've heard about on Velp?!");
event[4] = PhoneAddMessage(event[4],her,	"I wish I could go, but actually....");
event[4] = PhoneAddMessage(event[4],her,	"I'm REALLY allergice to cats :(");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"Impresso! See you at 4!");
event[5] = PhoneAddMessage(event[5],her,	"Impresso?");
event[5] = PhoneAddMessage(event[5],her,	"Oh, that one cat cafe right?");
event[5] = PhoneAddMessage(event[5],her,	"Taylor probably should have mentioned...");
event[5] = PhoneAddMessage(event[5],her,	"I'm really allergic to cats, can we go somewhere else?");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"Oh yeah! That one random bar down that shady alley right??");
event[6] = PhoneAddMessage(event[6],him,	";)");
event[6] = PhoneAddMessage(event[6],her,	"ew gross");
event[6] = PhoneAddMessage(event[6],her,	"You're joking right? I thought it was a cafe or something");
event[6] = PhoneAddMessage(event[6],her,	"Seriously though, where are we going?");
output[i++] = event;

// Can't do cat cafe
event = array_create(7);
event[0] = "Sorry, but I can't do the cat cafe.  Is there some other place that we could meet?";
//responses
event[1] = "I heard of a cafe";
event[2] = "What would you like";
event[3] = "WacDonalds?";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"I heard about a new cafe on 8th street.");
event[4] = PhoneAddMessage(event[4],him,	"Hold on while I look it up");
event[4] = PhoneAddMessage(event[4],her,	"That's gotta be No Ghost Bears!");
event[4] = PhoneAddMessage(event[4],her,	"It has lots of cute bear decor!");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"Is there someplace you'd like to try? I'm up for anything.");
event[5] = PhoneAddMessage(event[5],her,	"NO GHOST BEARS!");
event[5] = PhoneAddMessage(event[5],him,	"what?");
event[5] = PhoneAddMessage(event[5],her,	"It's a new cafe on 8th street called No Ghost Bears.");
event[5] = PhoneAddMessage(event[5],her,	"It has really cure decor, I've seen pics on Extragram!");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"idk");
event[6] = PhoneAddMessage(event[6],him,	"How about WacDonalds?");
event[6] = PhoneAddMessage(event[6],her,	"...");
event[6] = PhoneAddMessage(event[6],her,	"okay then...");
event[6] = PhoneAddMessage(event[6],her,	"how about no.  Let's stick to Cafe's okay?");
event[6] = PhoneAddMessage(event[6],him,	"sure");
output[i++] = event;

// what's your favorite bear
event = array_create(7);
event[0] = "There's this new cafe opening called NO GHOST BEARS! It has really cute decore, and I love bears.  Do you have a favorite type of bear?";
//responses
event[1] = "Panda";
event[2] = "Pizzly bear";
event[3] = "Unbearable";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"I actually love panda bears");
event[4] = PhoneAddMessage(event[4],him,	"They're my spirit animal");
event[4] = PhoneAddMessage(event[4],her,	"o");
event[4] = PhoneAddMessage(event[4],her,	"m");
event[4] = PhoneAddMessage(event[4],her,	"g");
event[4] = PhoneAddMessage(event[4],her,	"Polar bears are MY spirit animal");
event[4] = PhoneAddMessage(event[4],her,	"<3");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"Hmm");
event[5] = PhoneAddMessage(event[5],him,	"I recently read this article about pizzly bears. A cross between polar and grizzly bears.");
event[5] = PhoneAddMessage(event[5],him,	"They were pretty cute.");
event[5] = PhoneAddMessage(event[5],her,	"It's a bit sad though");
event[5] = PhoneAddMessage(event[5],her,	"As polar bears migrate south there will be more pizzly bears, but fewer polar bears.");
event[5] = PhoneAddMessage(event[5],her,	"I'm impressed with your bear knowledge.");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"Bears are unbearable");
event[6] = PhoneAddMessage(event[6],her,	"So you're saying our date is going to be unbearable?");
event[6] = PhoneAddMessage(event[6],her,	"Gee thanks");
event[6] = PhoneAddMessage(event[6],her,	"I actually study bears.");
event[6] = PhoneAddMessage(event[6],him,	"oops");
output[i++] = event;

// Im a bearologist
event = array_create(7);
event[0] = "I'm actually a bearologist.  Which is why I know so much about bears.  What do you do?";
//responses
event[1] = "Boring Geologist";
event[2] = "Not much";
event[3] = "I'm a spy";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"I'm a geologist at the BORING company.");
event[4] = PhoneAddMessage(event[4],him,	"Get it ;P");
event[4] = PhoneAddMessage(event[4],her,	"Haha, I'm sure geology isn't THAT boring");
event[4] = PhoneAddMessage(event[4],her,	"though it does sound");
event[4] = PhoneAddMessage(event[4],her,	". . .");
event[4] = PhoneAddMessage(event[4],her,	"sedimentary");
event[4] = PhoneAddMessage(event[4],him,	"lol");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"Not much");
event[5] = PhoneAddMessage(event[5],him,	"I don't want to bore you with the details, but I'm a geologist.");
event[5] = PhoneAddMessage(event[5],her,	"Oh it can't be that bad.");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"I'm a secret agent.");
event[6] = PhoneAddMessage(event[6],him,	"In fact, I'm in the middle of killing a lot of people.");
event[6] = PhoneAddMessage(event[6],him,	"I mean...");
event[6] = PhoneAddMessage(event[6],him,	"I like rocks");
event[6] = PhoneAddMessage(event[6],her,	"Haha what?");
event[6] = PhoneAddMessage(event[6],her,	"That's a joke right?");
event[6] = PhoneAddMessage(event[6],her,	"What about rocks? are you a geologist?");
event[6] = PhoneAddMessage(event[6],him,	"...yeah");
output[i++] = event;

// hello
event = array_create(7);
event[0] = "Hello";
//responses
event[1] = "Hi";
event[2] = "Low";
event[3] = "Awkward";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"Hi there, how's it going");
event[4] = PhoneAddMessage(event[4],her,	"Not bad.");
event[4] = PhoneAddMessage(event[4],him,	"Pretty slow at the office today.");
event[4] = PhoneAddMessage(event[4],her,	"It's nice to take a breather every once in a while.");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"Low");
event[5] = PhoneAddMessage(event[5],her,	". . .");
event[5] = PhoneAddMessage(event[5],her,	"What?");
event[5] = PhoneAddMessage(event[5],him,	"You say hi, I say low.");
event[5] = PhoneAddMessage(event[5],him,	"lol");
event[5] = PhoneAddMessage(event[5],her,	"oh...nice");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"... :|");
event[6] = PhoneAddMessage(event[6],him,	"awkward");
event[6] = PhoneAddMessage(event[6],her,	". . .");
output[i++] = event;

//weekedn plans
event = array_create(7);
event[0] = "You doing anything fun this weekend?";
//responses
event[1] = "Yup";
event[2] = "Free time";
event[3] = "Nope";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"Yup");
event[4] = PhoneAddMessage(event[4],him,	"I managed to find some tickets to the Warmgame concert!");
event[4] = PhoneAddMessage(event[4],her,	"Oh nice, they're pretty good.");
event[4] = PhoneAddMessage(event[4],her,	"You going with friends?");
event[4] = PhoneAddMessage(event[4],him,	"I'm not sure yet.");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"I'm looking forward to a couple free days");
event[5] = PhoneAddMessage(event[5],him,	"Sometimes no thing is the best thing");
event[5] = PhoneAddMessage(event[5],her,	"hmm");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"nope.");
event[6] = PhoneAddMessage(event[6],her,	"k");
output[i++] = event;

// weird hobbies
event = array_create(7);
event[0] = "It may be weird, but recently I've been folding highly detailed paper airplanes.  Do you have any weird hobbies?";
//responses
event[1] = "I like rocks";
event[2] = "Interesting";
event[3] = "I am very normal";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"Haha nice");
event[4] = PhoneAddMessage(event[4],him,	"I like to collect interesting rocks");
event[4] = PhoneAddMessage(event[4],her,	"Haha thats so random");
event[4] = PhoneAddMessage(event[4],him,	"I'm a geologist for a living, but i actually love what I do.");
event[4] = PhoneAddMessage(event[4],him,	":)");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"Interesting");
event[5] = PhoneAddMessage(event[5],him,	"Any particularly impressive models?");
event[5] = PhoneAddMessage(event[5],her,	"Though not technically an airplane");
event[5] = PhoneAddMessage(event[5],her,	"I recently folded a space shuttle that turned out really well.");
event[5] = PhoneAddMessage(event[5],him,	"I'd like to see that sometime");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"I'm actually very normal");
event[6] = PhoneAddMessage(event[6],him,	"Nothing as weird as that");
event[6] = PhoneAddMessage(event[6],him,	"haha");
output[i++] = event;

// what did you want to be when you grew up
event = array_create(7);
event[0] = "As a kid I was impressed by the sea and was fairly convinced I would become a pirate, but now I am studying bears.  What did you want to be when you grew up?";
//responses
event[1] = "Astronaut";
event[2] = "A bear";
event[3] = "A spy";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"I was amazed by the stars");
event[4] = PhoneAddMessage(event[4],him,	"I wanted to become an astronaut");
event[4] = PhoneAddMessage(event[4],her,	"It seems we both wanted to be adventurers as children.");
event[4] = PhoneAddMessage(event[4],her,	"Weird how goals can change so drastically over time");
event[4] = PhoneAddMessage(event[4],him,	"yeah, weird.");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"A bear");
event[5] = PhoneAddMessage(event[5],her,	"lol");
event[5] = PhoneAddMessage(event[5],her,	"wait ... was that a joke?");
event[5] = PhoneAddMessage(event[5],her,	"Now I'm not sure, were you serious?  I had a dog phase.");
event[5] = PhoneAddMessage(event[5],him,	"yeah");
event[5] = PhoneAddMessage(event[5],her,	"yeah what? Joke or serious?");
event[5] = PhoneAddMessage(event[5],him,	"uh, the joke.");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"I'm actually very normal");
event[6] = PhoneAddMessage(event[6],him,	"Nothing as weird as that");
event[6] = PhoneAddMessage(event[6],him,	"haha");
output[i++] = event;

// indoor or outdoor
event = array_create(7);
event[0] = "Are you in an indoorsy or outdoorsy person?";
//responses
event[1] = "Outdoorsy";
event[2] = "Indoorsy";
event[3] = "The sun can die";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"I love to be outside.");
event[4] = PhoneAddMessage(event[4],him,	"Especially on clear nights when you can see the stars.");
event[4] = PhoneAddMessage(event[4],her,	"Yeah, I love being in nature.");
event[4] = PhoneAddMessage(event[4],her,	"Makes me feel clean and refreshed.");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"I generally stay inside");
event[5] = PhoneAddMessage(event[5],her,	"any particular reason?");
event[5] = PhoneAddMessage(event[5],him,	"Most my work and hobbies can be accomplished inside.");
event[5] = PhoneAddMessage(event[5],him,	"And I don't like being cold.");
event[5] = PhoneAddMessage(event[5],her,	"Lol yeah being warm can't be overstated.");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"The sun can go and #&$%!^@ die.");
event[6] = PhoneAddMessage(event[6],her,	"Whoah partner");
event[6] = PhoneAddMessage(event[6],her,	"calm down");
event[6] = PhoneAddMessage(event[6],him,	"D:<");
output[i++] = event;

// indoor or outdoor
event = array_create(7);
event[0] = "Do you have any pets? I have the cutest dog!";
//responses
event[1] = "I love dogs";
event[2] = "No pets";
event[3] = "Dogs suck";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"I love dogs! What's your dogs name?");
event[4] = PhoneAddMessage(event[4],her,	"Haha, Pickle!");
event[4] = PhoneAddMessage(event[4],her,	"Creative right? ;)");
event[4] = PhoneAddMessage(event[4],her,	"He such a good dog, keeps my legs warm at night and always sticking around nearby");
event[4] = PhoneAddMessage(event[4],her,	":)");
event[4] = PhoneAddMessage(event[4],him,	"yup, dogs are great");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"No pets");
event[5] = PhoneAddMessage(event[5],him,	"In my line of work I can't be home very often");
event[5] = PhoneAddMessage(event[5],him,	":/");
event[5] = PhoneAddMessage(event[5],her,	"bummer");
event[5] = PhoneAddMessage(event[5],her,	"That must be rough");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"Ew!");
event[6] = PhoneAddMessage(event[6],him,	"Dogs suck");
event[6] = PhoneAddMessage(event[6],her,	"You must like cats :/");
event[6] = PhoneAddMessage(event[6],him,	"And dogs are gross");
event[6] = PhoneAddMessage(event[6],her,	". . .");
output[i++] = event;

// whats your drink
event = array_create(7);
event[0] = "When you get home what's the drink you immediately go for?";
//responses
event[1] = "Tea";
event[2] = "Coffee";
event[3] = "Beer";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"I like to get home and brew some fresh tea :)");
event[4] = PhoneAddMessage(event[4],her,	"Me too");
event[4] = PhoneAddMessage(event[4],her,	"I used to drink coffee almost exclusively");
event[4] = PhoneAddMessage(event[4],her,	"But it started getting a bit boring you know?");
event[4] = PhoneAddMessage(event[4],her,	"The variety and subtlety of tea is fun");
event[4] = PhoneAddMessage(event[4],him,	"Yeah, there's not much like it.");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"Coffee");
event[5] = PhoneAddMessage(event[5],him,	"Wake: caffeinate");
event[5] = PhoneAddMessage(event[5],him,	"Work: caffeinate");
event[5] = PhoneAddMessage(event[5],him,	"Home: caffeinate");
event[5] = PhoneAddMessage(event[5],her,	"Yes X)");
event[5] = PhoneAddMessage(event[5],her,	"I used to do the same thing.");
event[5] = PhoneAddMessage(event[5],her,	"You should try Darjeeling tea, its pretty good");
event[5] = PhoneAddMessage(event[5],him,	"sure");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"Beer");
event[6] = PhoneAddMessage(event[6],him,	"I like to get home and clear my mind as fast as possible");
event[6] = PhoneAddMessage(event[6],her,	"hmm");
event[6] = PhoneAddMessage(event[6],her,	"If you're stressed maybe you should try and resolve the issue?");
event[6] = PhoneAddMessage(event[6],him,	"It's not an issue, I just like to have a few beers.");
event[6] = PhoneAddMessage(event[6],her,	". . .");
output[i++] = event;

// favorite breakfast
event = array_create(7);
event[0] = "I've been trying to find out the best kind of pancakes, so have been making them with all different sorts of flours, fruit added, butter substitutes and all that.  I haven't yet found a fancy pancake that can beat a classic buttermilk with a side of overeasy. Wow, I must really like breakfast...  what do you like for breakfast?";
//responses
event[1] = "Eggs: fried";
event[2] = "I skip it";
event[3] = "Eggs: fertilized";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"I like to keep it simple and just fry up a couple eggs.");
event[4] = PhoneAddMessage(event[4],her,	"Me too");
event[4] = PhoneAddMessage(event[4],her,	"I used to drink coffee almost exclusively");
event[4] = PhoneAddMessage(event[4],her,	"But it started getting a bit boring you know?");
event[4] = PhoneAddMessage(event[4],her,	"The variety and subtlety of tea is fun");
event[4] = PhoneAddMessage(event[4],him,	"Yeah, there's not much like it.");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"I generally tend to skip breakfast");
event[5] = PhoneAddMessage(event[5],her,	"why's that?");
event[5] = PhoneAddMessage(event[5],him,	"Because I like my sleep and grab as much as I can before heading out XP");
event[5] = PhoneAddMessage(event[5],her,	"You should really try making time for breakfast");
event[5] = PhoneAddMessage(event[5],her,	"It's important");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"I like my eggs fertilized.");
event[6] = PhoneAddMessage(event[6],her,	"Ew");
event[6] = PhoneAddMessage(event[6],her,	"Isn't that some sort of delicacy");
event[6] = PhoneAddMessage(event[6],her,	"I saw a video of it on Metube.");
event[6] = PhoneAddMessage(event[6],her,	"It breaks my heart </3");
output[i++] = event;

// 
event = array_create(7);
event[0] = "What do you do when you're bored?";
//responses
event[1] = "Read";
event[2] = "Volunteer";
event[3] = "I'm never bored";
//positive chain
event[4] = PhoneAddMessage(event[4],him,	"I like to find myself a cozy spot and read");
event[4] = PhoneAddMessage(event[4],her,	"Have you read \"Thatcher in my Eye\"?");
event[4] = PhoneAddMessage(event[4],her,	"I just finished it and it was really good.");
event[4] = PhoneAddMessage(event[4],him,	"I haven't, but I guess I'll have  to add that to my list.");
//meh chain
event[5] = PhoneAddMessage(event[5],him,	"When I find I have some time off I see if the nearby shelter could use some help");
event[5] = PhoneAddMessage(event[5],him,	"They nearly always do ;)");
event[5] = PhoneAddMessage(event[5],her,	"Thats rather selfless");
//bad chain
event[6] = PhoneAddMessage(event[6],him,	"I don't get bored.");
event[6] = PhoneAddMessage(event[6],her,	"what? never?");
event[6] = PhoneAddMessage(event[6],her,	"what do you do all day?");
event[6] = PhoneAddMessage(event[6],her,	"I don't get bored.");
event[6] = PhoneAddMessage(event[6],him,	"Okay, I don't think I believe you.");
output[i++] = event;

//done 
return output;