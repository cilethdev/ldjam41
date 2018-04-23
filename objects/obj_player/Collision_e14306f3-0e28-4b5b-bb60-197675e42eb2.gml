/// @description 
if (other.team != team && !dashing) {
	with(other) { 
		instance_destroy();
	}
	hp -= 1;
	
	//SFX
	var snd = choose(snd_playerHit1,snd_playerHit2);
	var pitch = random_range(0.95,1);
	PlaySound(snd,pitch,0,1);
	
	//VFX
	Camera.shake = 8;
	
}