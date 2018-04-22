/// @description 
lifeStart = irandom_range(60,90);
life = lifeStart
chooseDirT = 0;
xt = x;
vy = random_range(-0.5,-0.75);
image_speed = 0;
image_index = irandom(4);
var c = choose(85,105,135);
image_blend = make_colour_rgb(c,c,c);
scale = random_range(0.25,0.3);
image_xscale = scale;
image_yscale = scale;
spin = random_range(-0.25,0.25);
image_alpha = 0.75;