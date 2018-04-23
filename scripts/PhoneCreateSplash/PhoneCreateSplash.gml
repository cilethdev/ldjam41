///@arg x
///@arg y
///@arg dir
///@arg color

var dx = argument0;
var dy = argument1;
var dir = argument2;
var color = argument3;

var _splash = instance_create_depth(dx,dy,-1000,PhoneSplash);
_splash.color = color;
_splash.direction = dir;