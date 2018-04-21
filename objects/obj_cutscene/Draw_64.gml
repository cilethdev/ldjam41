/// @description 
if (fade != -1) {
	draw_set_alpha(fade);
	draw_set_colour(c_black);
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),-1);
	draw_set_alpha(1);
}

if (textCopy != "") {
	FontSet(fnt_HUD,c_white,fa_center,fa_middle);
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,textCopy);
}