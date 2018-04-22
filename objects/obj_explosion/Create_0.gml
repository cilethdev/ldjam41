/// @description

with(par_entity) {
	if (object_index != obj_player) {
		if (place_meeting(x,y,other) && !collision_line(x,y-12,other.x,other.y,obj_solid,false,true)) {
			instance_destroy();
		}
	}
}
image_angle = irandom(360);