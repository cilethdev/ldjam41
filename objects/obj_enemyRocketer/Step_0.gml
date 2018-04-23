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
	
	switch(state) {
		case IDLE:
			wpnAngle = (facing == 1)? 0 : 180;
			var los = collision_line(x,y-14,obj_player.x,obj_player.y-14,obj_solid,-1,1);
			if (distance_to_object(obj_player) < range && canFire && !los) {
				state = ATTACK;
			}
		break;
		case ATTACK:
			wpnAngle = point_direction(x,y,obj_player.x,obj_player.y);
			//Attack
			var los = collision_line(x,y-14,obj_player.x,obj_player.y-14,obj_solid,-1,1);
			if (distance_to_object(obj_player) < range && canFire && !los) {
				if (shootDelay) shootDelay--;
			}
	
			if (distance_to_object(obj_player) < range && canFire && !los && !shootDelay) {
				
				canFire = false;
				fireCD  = fireRate+irandom_range(-15,15);
				var rocket = instance_create_depth(x,y-14,depth-1,obj_enemyRocket);
				rocket.spd = 8;
				rocket.dir = wpnAngle;
				rocket.image_angle = wpnAngle;
		
				//SFX
				var pitch = random_range(0.95,1);
				PlaySound(snd_rocketFire,pitch,0,1);
			}
	
			if (distance_to_object(obj_player) > range) {
				shootDelay = 60;
				state = IDLE;
			}
		break;
	}
	
	if (fireCD > 0) fireCD--;
	if (fireCD == 0) {
		fireCD = -1;
		canFire = true;
	}
}