/// @description 

// Inherit the parent event
event_inherited();

//Health
if (hp <= 0) {
	instance_destroy();
}

//Facing
if (instance_exists(obj_player)) {
	if(player == undefined){
		player = instance_find(obj_player,0);
	}
	var distanceToPlayer = distance_to_object(player);
	var playerx = player.x;
	var playery = player.y;
	facing = (playerx > x)? 1 : -1;
	
	switch(state) {
		case IDLE:
			wpnAngle = (facing == 1)? 0 : 180;
			var los = collision_line(x,y-14,playerx,playery-14,obj_solid,-1,1);
			if (distanceToPlayer < range && canFire && !los) {
				state = ATTACK;
			}
		break;
		case ATTACK:
			wpnAngle = point_direction(x,y-14,playerx,playery);
			//Attack
			var los = collision_line(x,y-14,playerx,playery-14,obj_solid,-1,1);
			if (distanceToPlayer < range && canFire && !los) {
				if (shootDelay) shootDelay--;
			}
	
			if (distanceToPlayer < range && canFire && !los && !shootDelay) {
				
				canFire = false;
				fireCD  = fireRate+irandom_range(-15,15);
				var rocket = instance_create_depth(x+lengthdir_x(16,wpnAngle),y-14+lengthdir_y(16,wpnAngle),depth-1,obj_enemyRocket);
				rocket.spd = 8;
				rocket.dir = wpnAngle;
				rocket.image_angle = wpnAngle;
		
				//SFX
				var pitch = random_range(0.95,1);
				PlaySound(snd_rocketFire,pitch,0,1);
			}
	
			if (distanceToPlayer > range) {
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