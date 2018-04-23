/// @arg player
var player = argument0;
if(!is_undefined(player)){
	player.hp = min(5,player.hp+2);
	//play the correct sound.
	PlaySound(snd_phonePositive,1,0,1);
}