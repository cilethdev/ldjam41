/// @desc PhoneDrawTextMessage(x,y,message,mine,width); draws a text message at the given coordinates.  returns the height and width of the text message.
/// @arg x x pos to draw the message
/// @arg y y pos to draw the message.
/// @arg message the message contained in the message
/// @arg mine boolean, whether or not this is user's message or another person's message. if it your message, the message will be drawn to the left of the x. otherwise the opposite.
/// @arg width when to break to a new line.
var dx = argument0;
var dy = argument1;
var message = argument2;
var mine = argument3;
var width = argument4;

draw_set_font(fnt_phoneTextMessage);
var _textSpacerHeight = 15;
var _messagePaddingWidth = 10;
var _messagePaddingHeight = 10;
var _messageWidth = string_width_ext(message,_textSpacerHeight,width-2*_messagePaddingWidth);
var _messageHeight = string_height_ext(message,_textSpacerHeight,width-2*_messagePaddingWidth);
//decide which color is going to be used.

if(mine){ // draws to the left of x.
	// draw message box
	PhoneDrawMessageBox(dx-(_messageWidth+2*_messagePaddingWidth),dy-(_messageHeight+2*_messagePaddingHeight),_messageWidth+2*_messagePaddingWidth,_messageHeight+2*_messagePaddingHeight,mine)
	// draw the message text.
	FontSet(fnt_phoneTextMessage,c_white,fa_left,fa_top);
	draw_text_ext(dx-(_messageWidth+_messagePaddingWidth),dy-(_messageHeight+_messagePaddingHeight),message,_textSpacerHeight,width-2*_messagePaddingWidth);
}
else{ // draws to the right of x.
	// draw message box
	PhoneDrawMessageBox(dx,dy-(_messageHeight+2*_messagePaddingHeight),_messageWidth+2*_messagePaddingWidth,_messageHeight+2*_messagePaddingHeight,mine);
	// draw the message text.
	FontSet(fnt_phoneTextMessage,c_black,fa_left,fa_top);
	draw_text_ext(dx+_messagePaddingWidth,dy-(_messageHeight+_messagePaddingHeight),message,_textSpacerHeight,width-2*_messagePaddingWidth);
}

//return height of the drawn message.
return _messageHeight+2*_messagePaddingHeight;