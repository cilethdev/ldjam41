/// @description 
event_inherited();

text = "TIMER";
ini_open("settings.ini");
timer = ini_read_real("settings","timer",0);
ini_close();