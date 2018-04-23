/// @description
//ROPE
var dis = y;
for(i=0;i<(dis+64)div 32;i++) {
	if !place_meeting(x,(i*32)+64,obj_solid) {
		draw_sprite(spr_rope,0,x,i*32);
	}
}

if (!onGround) {
	sprite_index = spr_enemy3Fall;
} else {
	sprite_index = spr_enemy3Idle;
}
draw_sprite_ext(sprite_index,image_index,x,y,xscale*facing,yscale,image_angle,image_blend,image_alpha);

//weapon
draw_sprite_ext(weapon,0,x,y-12,facing,1,0,image_blend,image_alpha);
