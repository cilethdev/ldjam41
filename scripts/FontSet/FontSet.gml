/// @desc FontSet(font,color,halign,valign);
/// @arg font
/// @arg color
/// @arg halign
/// @arg valign

var font,color,halign,valign;
font	= argument0;
color	= argument1;
halign	= argument2;
valign	= argument3;

draw_set_font(font);
draw_set_colour(color);
draw_set_halign(halign);
draw_set_valign(valign);