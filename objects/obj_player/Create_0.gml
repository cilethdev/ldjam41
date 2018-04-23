/// @description 
event_inherited();
instance_create_layer(x,y,"Reticle",Reticle);

canMove = true;
vx		= 0;
vxMax	= 4;
vy		= 0;
cx		= 0.1;
cy		= 0;
vyMax	= 10;
grav	= 0.4;

acc		= 0.5;
fric	= 0.5;
airAcc	= 0.5;
airFric = 0.1;

//Jumping
jspd	= -9;//-6.25;
jNum	= 0;
jMax	= 1;
bounce	= false;

//Wall jump
onWall  = false;
wallJumpT = 0;
wallStick = 0;

//Dashing
canDash		= true;
dashing		= false;
dashCD		= -1
dashT		= 0;
dashDir		= 0;
slide		= 0;

//Collisions
onGround	= false;
cLeft		= 0;
cRight		= 0;

//Attacking
hitbox		= -1;
hit			= -1;
hitBy		= -1;
attackCD	= 0;

//Visuals
facing = 1;
landed = false;
xscale = 1;
yscale = 1;
IDLE	= 0;
RUN		= 1;
JUMP	= 2;
ONWALL	= 3;
ROLL	= 4;
animationState = IDLE;

//Sound
footStepPlayed = false;

//HUD
hud = instance_create_layer(0,0,"HUD",HUD);
phone = instance_create_depth(0,0,-1100,Phone);

//Health
hp = 5;

//Weapon
init_weapons();
weapon	= weapons.rifle;
wpnUnlocked[weapons.pistol]		= true;
wpnUnlocked[weapons.rifle]		= true;
wpnUnlocked[weapons.shotgun]	= true;
wpnUnlocked[weapons.sniper]		= true;
wpnUnlocked[weapons.rockets]	= true;


flip		= 1;
wpnYOff		= 12;
wpnXScale	= 1;
wpnYScale	= 1;
wpnAngle	= 0;
team		= 0;

//Shooting
canFire		= true;
fireRate	= wpn[weapon,weaponProperties.fireRate];
fireCD		= -1;
weaponSwitch = false;

//Reloading
ammo		= wpn[weapon,weaponProperties.ammoClip];
reloading	= false;
reloadT		= 0;

