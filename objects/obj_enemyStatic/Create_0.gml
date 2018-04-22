/// @description 

// Inherit the parent event
event_inherited();

hp   = 3;
team = 1;

//Visuals
facing	= -1;
xscale	= 1;
yscale	= 1;

//Attacking
shootDelay = 60;
range = 480;
fireRate = 2*room_speed;
fireCD	= -1;
canFire = true;

weapon = spr_enemy1Weapon;

alerted = false;