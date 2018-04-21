/// @description 
draw_sprite_ext(sprite_index,image_index,x,y,_springValue[SPRING_XSCALE],_springValue[SPRING_YSCALE],spriteA,image_blend,image_alpha);
if (text != "") {
	FontSet(fnt_HUD,c_black,fa_center,fa_middle);
	draw_text_transformed(x,y,text,_springValue[SPRING_XSCALE],_springValue[SPRING_YSCALE],spriteA);
}
