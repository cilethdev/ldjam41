/// @description 
if (other.team != team && !dashing) {
	with(other) { 
		instance_destroy();
	}
	hp -= 1;
	
	//SFX
	
	//VFX
	Camera.shake = 8;
	
}