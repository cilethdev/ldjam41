/// @description Insert description here
// You can write your code in this editor
ini_open("settings.ini");
timerOn = ini_read_real("settings","timer",0);
ini_close();
if(!timerOn){
	instance_destroy();	
}
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
timer = 0.0;
