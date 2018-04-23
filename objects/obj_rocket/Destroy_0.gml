/// @description 
instance_create_depth(x,y,-1000,obj_explosion);
if instance_exists(obj_player) {
	if distance_to_object(obj_player) < 640  {
		Camera.shake = 15;
	}
}

if audio_is_playing(snd_rocketFly) {
	audio_stop_sound(snd_rocketFly);
	PlaySound(snd_rocketExplosion,1,0,1);
}