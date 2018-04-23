/// @description
if (DissolveAmount > 0) {
	DissolveAmount -= 1/20;
}

DissolveShader(sprite_index,image_index,x,y,facing,1,0,image_blend,1,DissolveAmount);

if(DissolveAmount <= 0){
	instance_destroy();
}

