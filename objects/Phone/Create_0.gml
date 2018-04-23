/// @description set initial state of the phone.
// You can write your code in this editor
player = instance_find(obj_player,0);
stop = false;

//get the screen size.
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
phoneWidth = sprite_get_width(spr_phoneBackground);
phoneHeight = sprite_get_height(spr_phoneBackground);

//anchors
anchorOutx = guiWidth*0.78;
anchorOuty = guiHeight/2;
anchorAwayx = guiWidth+phoneWidth*0.2;
anchorAwayy = guiHeight*0.9;

// phone state.
phoneOut = false;
idealx = anchorAwayx;
idealy = anchorAwayy;

timeText = 1;
timeEndOfEvent = 30;
timeBeginEvent = 0.5;
timeToResponse = 20;

//these numbers were all just gotten by measuring spr_phoneBackground.
screenPaddingSide =  9;
screenPaddingTop  = 82;
screenWidth  = 224 - screenPaddingSide;
screenHeight = 337 - screenPaddingTop;

messageSpace = 5;

namey = 51; // where the name is drawn at the top of the phone.
firstResponsey = 342;
secondResponsey = 387;
thirdResponsey = 426;
responseButtonPadding = 20;

surfaceWidth = 256;
surfaceHeight = 512;

//surfaces.   //default to -1 so they are created during the draw event.
phoneSurface = -1; //needs to be a multiple of 2 for efficiency and must be larger than spr_phoneBackground.
screenSurface = -1; //this is where the messages will be drawn to.  then the portion visible on the screen will be drawn onto the phone.

ani_x = 0;
ani_y = 0;

//animation crap.
ani_rumbleRate = 20;
ani_rumbleScaleActive = 6;
ani_rumbleScale = 0;
ani_rumble = 0;
ani_roll_modifier = 3;

ani_vibrate = 0;
ani_vibrateRate = 80;
ani_vibrateScale = 1;
ani_vibrateActive = 30;

ani_breathRate = 0.5;
ani_breathScaleActive = 50;
ani_breathScale = 0;
ani_breath = 0;

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
herName = "Babrie";

//the response state
response[0] = "          ";
response[1] = "          ";
response[2] = "          ";
correctResponse = 0; //can be 0 or 1.

messageIndex = 0;

correctResponseChain[0] = newMessage(false,"demo correct");
mediumResponseChain[0] = newMessage(false,"demo medium");
wrongResponseChain[0] = newMessage(false,"demo wrong");

tooLateResponseChain[0] = newMessage(false,"demo too late");

enum ResponseState{
	noEvent,			//between events
	noSelectionMade,	//the event is going, but no selection has been made yet.
	correct,			//the following occur during event and result in the event's completion.
	medium,
	wrong,
	tooLate
}

responseState = ResponseState.noEvent;
PhoneSetEventAlarm(timeToResponse);

textHistory[0] = newMessage(false,"hello");

textHistory = PhoneAddMessage(textHistory,true,"hey baby girl");
textHistory = PhoneAddMessage(textHistory,false,"ewww.");
textHistory = PhoneAddMessage(textHistory,true,"What do you do on any given sunday night? ;P");
textHistory = PhoneAddMessage(textHistory,false,"Let me tell you a long and pointless story about my amazing pet dog whom i very much love. and you should definitiely care about this dog for some reason.");
textHistory = PhoneAddMessage(textHistory,true,"Im a spy.");
textHistory = PhoneAddMessage(textHistory,true,"shit");

