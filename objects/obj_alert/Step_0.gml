/// @description 
if (life) {
	life--;
} else {
	instance_destroy();
}

xscale = Approach(xscale,1,0.02);
yscale = Approach(yscale,1,0.02);
