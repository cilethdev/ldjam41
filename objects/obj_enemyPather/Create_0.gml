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
range = 320;
deAggroRange = 480;
fireRate = 90;
fireCD	= -1;
canFire = true;
deAggroT = 0;

weapon = spr_enemy2Rifle;

IDLE	= 0;
PATH	= 1;
ATTACK	= 2;
state = IDLE;

idleT = 120;
pathT = -1;

player = undefined;