/// @description 
if (other.onGround) {
	var fade = instance_create_layer(0,0,"Instances",fx_polygonFade);
	fade.rm = rm;
	
	PlaySound(snd_objective,1,0,1);
	instance_destroy();
}