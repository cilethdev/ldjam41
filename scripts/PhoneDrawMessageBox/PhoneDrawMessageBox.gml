/// @desc PhoneDrawMessageBox(x,y,w,h,mine);
/// @arg x x pos
/// @arg y y pos 
/// @arg w width
/// @arg h height
/// @arg mine boolean whether or not it is a text sent from me.

var dx = argument0;
var dy = argument1;
var w = argument2;
var h = argument3;
var mine = argument4;

var _minWidth = 40;
var _minHeight = 40;

//don't do anything if the box is wrong.
if(w < _minWidth){
	w = _minWidth;	
}
if(h < _minHeight){
	h = _minHeight;	
}

var _messageSprite; // the style of message box.
if(mine){
	_messageSprite = spr_messageHim;
}
else {
	_messageSprite = spr_messageHer;
}

var _sprWidth = sprite_get_width(_messageSprite);
var _sprHeight = sprite_get_width(_messageSprite);

// draw the corners of the message.
draw_sprite(_messageSprite,0,	dx,				dy);				//top left
draw_sprite(_messageSprite,2,	dx+w-_sprWidth, dy);				//top right
draw_sprite(_messageSprite,6,	dx,				dy+h-_sprHeight);	//bot left
draw_sprite(_messageSprite,8,	dx+w-_sprWidth,	dy+h-_sprHeight);	//bot right
//find the horizontal and vertical stretch factor
var _horizontalStretchFactor =	(w - 2*_sprWidth)/_sprWidth;
var _verticalStetchFactor =		(h - 2*_sprHeight)/_sprHeight;
// draw the edge bars.
draw_sprite_ext(_messageSprite,1,dx+_sprWidth,	dy,				_horizontalStretchFactor,	1,						0,c_white,1);//top
draw_sprite_ext(_messageSprite,7,dx+_sprWidth,	dy+h-_sprHeight,_horizontalStretchFactor,	1,						0,c_white,1);//bottom
draw_sprite_ext(_messageSprite,3,dx,			dy+_sprHeight,	1,							_verticalStetchFactor,	0,c_white,1);//left
draw_sprite_ext(_messageSprite,5,dx+w-_sprWidth,dy+_sprHeight,	1,							_verticalStetchFactor,	0,c_white,1);//right
//draw the center
draw_sprite_ext(_messageSprite,4,dx+_sprWidth,	dy+_sprHeight,	_horizontalStretchFactor,	_verticalStetchFactor,	0,c_white,1);//center
