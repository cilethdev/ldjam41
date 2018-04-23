/// @description 
draw_sprite_ext(sprite_index,image_index,x,y,xscale*facing,yscale,image_angle,image_blend,image_alpha);


//weapon
if (weapon != -1 && !dashing && !onWall) {
	flip = (mouse_x > x)? 1 : -1;
	var dirxoff,diryoff;
	dirxoff = lengthdir_x(wpn[weapon,weaponProperties.offset],wpnAngle);
	diryoff = lengthdir_y(wpn[weapon,weaponProperties.offset],wpnAngle);
	draw_sprite_ext(wpn[weapon,weaponProperties.sprite],0,x+dirxoff,y-wpnYOff+diryoff,wpnXScale,flip*wpnYScale,wpnAngle,image_blend,image_alpha);
}