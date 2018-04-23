/// @description
team = 0;
with(par_entity) {
	if (object_index != obj_player) {
		if (place_meeting(x,y,other) && !collision_line(x,y-12,other.x,other.y,obj_solid,false,true)) {
			if (other.team == 0) {
				instance_destroy();
			}
		}
	} 
}
with(obj_player) {
if (place_meeting(x,y,other) && !collision_line(x,y-12,other.x,other.y,obj_solid,false,true)) {
		if (other.team == 1) {
			hp -= 2;
		}
	}
}
image_angle = irandom(360);