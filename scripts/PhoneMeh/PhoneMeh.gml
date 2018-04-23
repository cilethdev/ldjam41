/// @arg player
var player = argument0;
if(!is_undefined(player)){
	player.hp = min(5,player.hp+1);
	
	//SFX
	PlaySound(snd_phoneNeutral,1,0,1);
	var clock = instance_find(obj_timer,0);
	if(instance_exists(clock)){
		clock.timer-=game_get_speed(gamespeed_fps);	
	}
}