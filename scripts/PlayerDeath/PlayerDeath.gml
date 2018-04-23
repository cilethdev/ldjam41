instance_destroy();
var playerCorpse = instance_create_layer(x,y,"Player",obj_playerDeath);
playerCorpse.facing = facing;
Camera.shake = 10;
instance_create_layer(0,0,"HUD",obj_gameover);