/// @description 
draw_sprite_ext(sprite_index,image_index,x,y,xscale*facing,yscale,image_angle,image_blend,image_alpha);

//weapon
draw_sprite_ext(weapon,0,x,y-12,1,facing,wpnAngle,image_blend,image_alpha);

draw_text(x,y-48,string(state));