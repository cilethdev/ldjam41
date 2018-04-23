/// @description 
sprA = point_direction(x,y,xprevious,yprevious);


// Inherit the parent event
event_inherited();
if (vx < 0.01 && onGround || y > room_height) {
	instance_destroy();
}

instance_create_depth(x+random_range(-4,4),y+random_range(-4,4),depth+1,obj_bloodBit);

