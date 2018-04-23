/// @description 
if life {
	life--;
} else {	
	instance_destroy();
}

chooseDirT = (chooseDirT+1) mod 30;
if chooseDirT == 0 {
	xt += irandom_range(-5,5);
}
x = Approach(x,xt,0.1);
y += vy;

scale = Approach(scale,1.5,1.5/lifeStart);
image_xscale = scale;
image_yscale = scale;

image_angle += spin;