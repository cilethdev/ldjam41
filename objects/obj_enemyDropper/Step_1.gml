/// @description 

// Inherit the parent event
event_inherited();

if (onGround) {
	if (!landed) {
		landed = true;
		
		//VFX
		xscale = 1.5;
		yscale = 0.5;
		
		//Dust
		var dust1 = instance_create_depth(x-12,y,depth-10,obj_dust);
		var dust2 = instance_create_depth(x+12,y,depth-10,obj_dust);
		dust2.image_xscale = -1;
	}
}
