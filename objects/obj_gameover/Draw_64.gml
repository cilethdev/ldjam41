/// @description
//fade to black

draw_set_colour(c_black);
draw_set_alpha(alpha);
draw_rectangle(0,0,guiw,guih,0);
draw_set_alpha(1);

//Gameover text
draw_sprite_ext(spr_gameover,image_index,guiw/2,guih*0.5,_springValue[SPRING_XSCALE],_springValue[SPRING_YSCALE],0,image_blend,image_alpha);

//Instructions
FontSet(fnt_HUDBig,c_white,fa_center,fa_middle);
draw_text(guiw/2,guih*0.8,"PRESS 'R' TO RESTART\nPRESS 'ESC' TO EXIT");