/// @description 
event_inherited();

cLeft	= place_meeting(x-1,y,obj_solid);
cRight	= place_meeting(x+1,y,obj_solid);

if (onGround) {
	jNum   = 0;
	onWall = false;
	wallStick = 0;
	bounce = false;
	if !landed {
		landed = true;
		xscale = 1.5;
		yscale = 0.5;
		
		//Dust
		var dust = instance_create_depth(x-12,y+random_range(0,-2),depth-10,obj_dust);
		dust.image_angle = choose(0,90,180,270);
		
		var dust2 = instance_create_depth(x+12,y+random_range(0,-2),depth-10,obj_dust);
		dust2.image_angle = choose(0,90,180,270);
	}
}
if (!onGround) {
	landed = false;
	if (!wallJumpT && (cLeft || cRight) && !wallStick) {
		if (!onWall && vy >= 0) {
			onWall = true;
			vy = 0;
		}
		if (!onWall && cLeft && Input.kLeft) {
			onWall = true;
		}
		if (!onWall && cRight && Input.kRight) {
			onWall = true;
		}
	}
	if (!cLeft && !cRight) {
		onWall = false;
		wallStick = 0;
	}
	
}