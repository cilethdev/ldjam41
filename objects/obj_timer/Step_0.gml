/// @description Insert description here
// You can write your code in this editor
if(instance_exists(cont_mMain)){
	instance_destroy();	
}
if(instance_exists(obj_gameover) || instance_exists(obj_ending)){
	return;	
}
// should also check for the win condition, whatever that is.

timer++;