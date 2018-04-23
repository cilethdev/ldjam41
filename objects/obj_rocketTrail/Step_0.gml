/// @description 
if (lifeT) {
	lifeT--;
	image_alpha = 1*(lifeT/life);
	y += vy;
} else {
	instance_destroy();
}