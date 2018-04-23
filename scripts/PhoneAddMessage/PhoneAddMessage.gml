/// @desc adds a message to a text history
/// @arg textHistory the textHistory
/// @arg mine whether or not it is the phone user's message
/// @arg message

var textHistory = argument0;
var mine = argument1;
var message = argument2;

draw_set_font(fnt_phoneTextMessage);
ani_messageShift = string_height(message)*1.3;

if(!is_array(textHistory)){ //make this an array if it isn't already.
	textHistory = [];
}
var _history = 7;
// should also play a sound depending upon who sent the message
var _newTextHistory;
_newTextHistory[0] = newMessage(mine,message);
//shiftCopy the array. also prevents the array from ever being longer than 7 messages.
for(var i = 0; i < array_length_1d(textHistory) && i<_history; ++i){
	_newTextHistory[1+i] = textHistory[i];
}

return _newTextHistory;