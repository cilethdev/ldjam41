/// @description 
if (other.team != team && !dashing) {
	with(other) { 
		instance_destroy();
	}
	
	//SFX
	
	//VFX
	Camera.shake = 10;
	
}