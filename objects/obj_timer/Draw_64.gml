/// @description Insert description here
// You can write your code in this editor
FontSet(fnt_HUDBig,c_white,fa_left,fa_top);

var totalSeconds = timer/game_get_speed(gamespeed_fps);
var minutes = floor(totalSeconds/60);
var remainderSeconds = totalSeconds - minutes*60;

var minuteDisplay = string(minutes);
var secondDisplay = "";
if(remainderSeconds<10){
	secondDisplay += "0";	
}
secondDisplay += string(remainderSeconds);
if(string_length(secondDisplay) > 5){
	secondDisplay = string_copy(secondDisplay,0,5);	
}
if(string_length(secondDisplay) < 3){
	secondDisplay += ".";	
}
while(string_length(secondDisplay) < 5){
	secondDisplay += "0";	
}

draw_text(guiWidth*0.025,guiHeight*0.9,minuteDisplay + ":" + secondDisplay);

