/// @description draw a response bubble.
/// @arg x the center of the message
/// @arg y pos the top of the message
/// @arg message the response message
/// @arg key the key that selects this message. -1 is the incorrect answer.
/// @arg selected 0=noneSelected 1=thisSelected 2=otherSelected

var dx = argument0;
var dy = argument1;
var message = argument2;
var key = argument3;
var selected = argument4;

//draw the background
var _padding = 10;
var _sprWidth = sprite_get_width(spr_response);
var _keySprWidth = sprite_get_width(spr_replyKeys);
var _keyShift = _keySprWidth*.66;
var _width = string_width(message)+2*_padding;
var _fontDownShift = 8;

var color;
if(selected != 0){
	if(selected == 2){
		color = c_black;	
	}
	else{
		if(key==-1){
			color = c_red;	
		}
		else{
			color = c_green;	
		}
	}
}
else {
	color = c_white;	
}
//draw corners
PhoneDrawResponseBox(dx-(_width-_keyShift)/2,dy,_width,key,selected);
FontSet(fnt_response,c_black,fa_center,fa_top);
draw_text(dx+_keyShift/2,dy+_fontDownShift,message);
//draw the key
if(key == -1){
	draw_sprite(spr_replyWrong,0,dx-(_width+_keyShift)/2,dy);
}
else {
	draw_sprite(spr_replyKeys,key,dx-(_width+_keyShift)/2,dy);	
}
