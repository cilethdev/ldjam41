/// @description
var randomDis,randomDir;
randomDis = random_range(16,64);
randomDir = irandom(360);
instance_create_depth(x+lengthdir_x(randomDis,randomDir),y+lengthdir_y(randomDis,randomDir),depth+1,obj_miniExplosion);
