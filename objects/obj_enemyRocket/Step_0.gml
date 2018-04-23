/// @description

if (distance_to_point(xstart,ystart) > range) {
	instance_destroy();
}

if (destroy) { instance_destroy(); }

vx = lengthdir_x(spd,dir);
vy = lengthdir_y(spd,dir);
if !place_meeting(x+vx,y,obj_solid) {
	x += vx;
} else {
	repeat(abs(vx)) {
		if !place_meeting(x+sign(vx),y,obj_solid) {
			x += sign(vx);
		} else {
			vx = 0;
			destroy = 1;
			break;
		}
	}
}
if !place_meeting(x,y+vy,obj_solid) {
	y += vy;
} else {
	repeat(abs(vy)) {
		if !place_meeting(x,y+sign(vy),obj_solid) {
			y += sign(vy);
		} else {
			vy = 0;
			destroy = 1;
		}
	}
}
if (!destroy) {
	var trail = instance_create_depth(x+random_range(-4,4),y+random_range(-4,4),depth+1,obj_rocketTrail);
		
}