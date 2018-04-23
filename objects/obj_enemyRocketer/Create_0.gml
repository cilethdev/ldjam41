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
fireRate = 3*room_speed;
fireCD	= -1;
canFire = true;

weapon = spr_enemyRockets;
wpnAngle = 0;

IDLE = 0;
ATTACK = 1;
state = IDLE;