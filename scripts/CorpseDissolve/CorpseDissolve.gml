with(instance_create_layer(x,y,"Instances",obj_corpseDisolve)) {
	sprite_index = other.sprite_index;
	image_xscale = other.facing;
}
repeat(random_range(3,6)) {
	instance_create_layer(x,y-12,"Instances",obj_bloodBlob);
}