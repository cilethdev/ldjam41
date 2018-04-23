/// @description 
// You can write your code in this editor
phoneWidth = sprite_get_width(spr_phoneSilhouette);
phoneHeight = sprite_get_height(spr_phoneSilhouette);

size = 1;
growRate = 1.1;

opacity = 1;
opacityDecay = 0.9;

color = c_white;
parent = undefined;

alarm_set(0,120);