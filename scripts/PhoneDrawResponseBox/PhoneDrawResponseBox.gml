/// @description draw a response bubble.
/// @arg x the center of the message
/// @arg y pos the top of the message
/// @arg w the response message
/// @arg key the key that selects this message. -1 is the incorrect answer.
/// @arg selected 0=noneSelected 1=thisSelected 2=otherSelected

var dx = argument0;
var dy = argument1;
var w = argument2;
var key = argument3;
var selected = argument4;

var _sprWidth = sprite_get_width(spr_response);

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
draw_sprite_ext(spr_response,0,dx,dy,1,1,0,color,1);//left
draw_sprite_ext(spr_response,2,dx+(w-_sprWidth),dy,1,1,0,color,1);//right;
draw_sprite_stretched_ext(spr_response,1,dx+_sprWidth,dy,w-2*_sprWidth,_sprWidth,color,1);//needs to properly stretch the response body. cna't think lele.