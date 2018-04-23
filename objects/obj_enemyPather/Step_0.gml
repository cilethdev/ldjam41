/// @description 

// Inherit the parent event
event_inherited();

//Health
if (hp <= 0) {
	instance_destroy();
}

//Facing
if (instance_exists(obj_player)) {
	var los = !collision_line(x,y-14,obj_player.x,obj_player.y-14,obj_solid,-1,1);
	//Path
	switch(state) {
		case IDLE:
			sprite_index = spr_enemy2Idle;
			if (idleT > 0) idleT--;
			if (idleT == 0) {
				idleT = -1;
				var switchTo = choose(IDLE,PATH);
				switch(switchTo) {
					case IDLE:
						idleT = irandom_range(60,120);
						state = IDLE;
					break;
					case PATH:
						pathT = irandom_range(120,300);
						state = PATH;
					break;
				}
			}
			if (distance_to_object(obj_player) < range && canFire && los) {
				state = ATTACK;
				idleT = -1;
				
				//VFX
				instance_create_depth(x,y-42,depth-10,obj_alert);
			}
		break;
		case PATH:
			sprite_index = spr_enemy2Run;
			if (pathT > 0) pathT--;
			if (pathT == 0) {
				pathT = -1;
				var switchTo = choose(IDLE,PATH);
				switch(switchTo) {
					case IDLE:
						idleT = irandom_range(120,240);
						state = IDLE;
					break;
					case PATH:
						pathT = irandom_range(90,240);
						state = PATH;
					break;
				}
			}
			//PATH
			vx = 1*facing;
			if !place_meeting(x+(16*facing),y+1,obj_solid){
				facing *= -1;
			}
			if place_meeting(x+sign(vx),y-12,obj_solid) {
				facing *= -1;
			}
			
			if (distance_to_object(obj_player) < range && canFire && los) {
				state = ATTACK;
				idleT = -1;
				
				//Alert
				instance_create_depth(x,y-42,depth-10,obj_alert);
			}
		break;
		case ATTACK:
			sprite_index = spr_enemy2Idle;
			if (shootDelay) shootDelay--;
			
			facing = (obj_player.x > x)? 1 : -1;
			
			//Attack
			if (distance_to_object(obj_player) < range && canFire && los && !shootDelay) {
				state = ATTACK;
				
				canFire = false;
				fireCD  = fireRate+irandom_range(-30,30);
				var bullet = instance_create_depth(x,y-14,depth-1,obj_bullet);
				bullet.spd = 10;
				bullet.dir = (facing == 1)? 0 : 180;
				bullet.image_angle =(facing == 1)? 0 : 180;
				bullet.team = team;
			}
			if (!los) {
				deAggroT++;
				if deAggroT >= 30 {
					state = IDLE;
					deAggroT = 0;
					shootDelay = 60;
					idleT = 60;
				}
			} else {
				deAggroT = 0;
			}
			if (distance_to_object(obj_player) > deAggroRange) {
				state = IDLE;
				deAggroT = 0;
				shootDelay = 60;
				idleT = 60;
			}
		break;
	}
	
	
	if (fireCD > 0) fireCD--;
	if (fireCD == 0) {
		fireCD = -1;
		canFire = true;
	}
}