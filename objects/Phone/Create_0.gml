/// @description set initial state of the phone.
// You can write your code in this editor

//potentially an enum to represent different phone actions.
// sitting off the screen
// jumping, moving left/right, shooting, explosion, mixture of the different events?
phoneWidth = sprite_get_width(spr_phoneBackground);
phoneHeight = sprite_get_height(spr_phoneBackground);

hyp = sqrt((phoneWidth*phoneWidth+phoneHeight*phoneHeight)/4);

//these numbers were all just gotten by measuring spr_phoneBackground.
screenPaddingSide =  9;
screenPaddingTop  = 82;
screenWidth  = 224 - screenPaddingSide;
screenHeight = 337 - screenPaddingTop;

messageSpace = 5;

namey = 61; // where the name is drawn at the top of the phone.
firstResponsey = 342;
secondResponsey = 387;
thirdResponsey = 426;
responseButtonPadding = 20;

surfaceWidth = 256;
surfaceHeight = 512;

//surfaces.   //default to -1 so they are created during the draw event.
phoneSurface = -1; //needs to be a multiple of 2 for efficiency and must be larger than spr_phoneBackground.
screenSurface = -1; //this is where the messages will be drawn to.  then the portion visible on the screen will be drawn onto the phone.

//animation crap.
ani_rumbleRate = 8;
ani_rumbleScale = 5;
ani_rumble = 0; //

ani_messageShift = 0; // this is used when a new message is added to the chain to allow the message to slide in.

keyCode[0] = ord("B");
keyCode[1] = ord("H");
keyCode[2] = ord("J");
keyCode[3] = ord("M");
keyCode[4] = ord("N");
keyCode[5] = ord("O");
keyCode[6] = ord("P");
keyCode[7] = ord("Y");
keyCode[8] = ord("U");
keyCode[9] = ord("L");

lastKeyPressed = 0;

responseKey[0]=0;
responseKey[1]=1;

//text history stuff
herName = "default name";

//the response state
response[0] = "compliment her dog";
response[1] = "flirt";
response[2] = "\"I prefer cats\"";
correctResponse = 0; //can be 0 or 1.

messageIndex = 0;

correctResponseChain[0] = newMessage(false,"demo correct");
correctResponseChain = PhoneAddMessage(correctResponseChain,true,"demo Correct");
mediumResponseChain[0] = newMessage(false,"demo medium");
mediumResponseChain = PhoneAddMessage(mediumResponseChain,true,"demo medium");
wrongResponseChain[0] = newMessage(false,"demo wrong");
wrongResponseChain = PhoneAddMessage(wrongResponseChain,true,"demo wrong");

enum ResponseState{
	noEvent,
	noSelectionMade,
	correct,
	medium,
	wrong,
	tooLate
}

responseState = ResponseState.noSelectionMade;

textHistory[0] = newMessage(false,"hello");

textHistory = PhoneAddMessage(textHistory,true,"hey baby girl");
textHistory = PhoneAddMessage(textHistory,false,"ewww.");
textHistory = PhoneAddMessage(textHistory,true,"What do you do on any given sunday night? ;P");
textHistory = PhoneAddMessage(textHistory,false,"Let me tell you a long and pointless story about my amazing pet dog whom i very much love. and you should definitiely care about this dog for some reason.");
textHistory = PhoneAddMessage(textHistory,true,"Im a spy.");
textHistory = PhoneAddMessage(textHistory,true,"shit");

