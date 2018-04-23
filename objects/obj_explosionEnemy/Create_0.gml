if (instance_exists(obj_player)) {
	with(obj_player) {
		if (place_meeting(x,y,other) && !collision_line(x,y-12,other.x,other.y,obj_solid,false,true)) {
				hp -= 2;
			}
		}
}