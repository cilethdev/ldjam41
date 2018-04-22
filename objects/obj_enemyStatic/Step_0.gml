/// @description 

// Inherit the parent event
event_inherited();

//Health
if (hp <= 0) {
	instance_destroy();
}

//Facing
if (instance_exists(obj_player)) {
	facing = (obj_player.x > x)? 1 : -1;
	
	
	//Attack
	var los = collision_line(x,y-14,obj_player.x,obj_player.y-14,obj_solid,-1,1);
	if (distance_to_object(obj_player) < range && canFire && !los) {
		if (shootDelay) shootDelay--;
		if !alerted {
			alerted = true;
			instance_create_depth(x,y-42,depth-10,obj_alert);
		}
	}
	
	if (distance_to_object(obj_player) < range && canFire && !los && !shootDelay) {
		canFire = false;
		fireCD  = fireRate+irandom_range(-30,30);
		var bullet = instance_create_depth(x,y-14,depth-1,obj_bullet);
		bullet.spd = 10;
		bullet.dir = (facing == 1)? 0 : 180;
		bullet.image_angle =(facing == 1)? 0 : 180;
		bullet.team = team;
	}
	
	if (distance_to_object(obj_player) > range) {
		alerted = false;
		shootDelay = 60;
	}
	
	if (fireCD > 0) fireCD--;
	if (fireCD == 0) {
		fireCD = -1;
		canFire = true;
	}
}