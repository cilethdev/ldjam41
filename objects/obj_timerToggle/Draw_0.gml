/// @description 
var sprIndex = 0;
if(timer == 0){
	sprIndex = 1;
}
draw_sprite_ext(sprite_index,sprIndex,x,y,xscale,yscale,0,image_blend,image_alpha);

draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y-28,text);