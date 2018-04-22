/// @description 
image_blend = choose(make_colour_hsv(10,225,235),make_colour_hsv(25,225,235),make_colour_hsv(35,225,245));
image_angle = irandom(360);

instance_create_depth(x,y,depth+1,obj_explosionSmoke);
scale = random_range(1,2);
image_xscale = scale;
image_yscale = scale;