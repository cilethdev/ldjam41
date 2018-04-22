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
var _width = string_width(message)+_padding+_keySprWidth;

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
draw_sprite_ext(spr_response,0,dx-(_width+_keySprWidth)/2,dy,1,1,0,color,1);//left
draw_sprite_ext(spr_response,2,dx+(_width-_sprWidth)/2,dy,1,1,0,color,1);//right;
//draw_sprite_stretched_ext(spr_response,1,dx+_keySprWidth-_width,dy,(_width-_keySprWidth)/2);//needs to properly stretch the response body. cna't think lele.