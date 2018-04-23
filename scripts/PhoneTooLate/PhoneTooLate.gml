/// @arg player
var player = argument0;
if(!is_undefined(player)){
	player.hp--;
	
	//SFX
	PlaySound(snd_phoneNegative,1,0,1);
}