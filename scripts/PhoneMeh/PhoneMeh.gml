/// @arg player
var player = argument0;
if(!is_undefined(player)){
	player.hp = min(5,player.hp+2);
	
	//SFX
	PlaySound(snd_phoneNeutral,1,0,1);
}