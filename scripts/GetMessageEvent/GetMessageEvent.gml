/// @desc returns a message event.


// the event structure
//0	the initial question
//1-3	the three responses,  it is up to the caller to scramble 1 and 2.
//		1 = right
//		2 = medium
//		3 = wrong
//4 the correct message chain
//5 the medium message chain
//6 the wrong message chain.

var event;
event[0] = "my favorite color is white. what is your favorite color?";
event[1] = "state your favorite color";
event[2] = "say the same as her";
event[3] = "white isn't a color";

event[4] = PhoneAddMessage(event[4],true,	"My favorite color is red.");
event[4] = PhoneAddMessage(event[4],false,	"Nice!");
event[4] = PhoneAddMessage(event[4],false,	"I like red as well!");

event[5] = PhoneAddMessage(event[5],true,	"What a coincidence! My favorite color is white as well.");
event[5] = PhoneAddMessage(event[5],false,	"Wow...");
event[5] = PhoneAddMessage(event[5],false,	"that's cool.");

event[6] = PhoneAddMessage(event[6],true,	"Technically white isn't a color.  It is actually a shade.  So is black.");
event[6] = PhoneAddMessage(event[6],true,	"lol");
event[6] = PhoneAddMessage(event[6],false,	"...");
event[6] = PhoneAddMessage(event[6],false,	"what the #@$% dude.");
event[6] = PhoneAddMessage(event[6],false,	"I like white ok.");

return event;