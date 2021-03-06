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
	
	
	//Attack
	var los = collision_line(x,y-14,playerx,playery-14,obj_solid,-1,1);
	if (distanceToPlayer < range && canFire && !los) {
		if (shootDelay) shootDelay--;
		if !alerted {
			alerted = true;
			//Alert
			var alert = instance_create_depth(x,y-42,depth-10,obj_alert);
			alert.owner = id;
		}
	}
	
	if (distanceToPlayer < range && canFire && !los && !shootDelay) {
		canFire = false;
		fireCD  = fireRate+irandom_range(-30,30);
		var bullet = instance_create_depth(x,y-14,depth-1,obj_bullet);
		bullet.spd = 10;
		bullet.dir = (facing == 1)? 0 : 180;
		bullet.image_angle =(facing == 1)? 0 : 180;
		bullet.team = team;
		
		//SFX
		var pitch = random_range(0.95,1);
		PlaySound(snd_pistol,pitch,0,1);
	}
	
	if (distanceToPlayer > range) {
		alerted = false;
		shootDelay = 60;
	}
	
	if (fireCD > 0) fireCD--;
	if (fireCD == 0) {
		fireCD = -1;
		canFire = true;
	}
}