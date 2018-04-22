/// @description 
if (lifeT) {
	lifeT--;
	image_alpha = 1*(lifeT/life);
} else {
	instance_destroy();
}