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
//done 
return output;