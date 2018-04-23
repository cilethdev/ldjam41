with(instance_create_layer(x,y,"Instances",obj_corpseDisolve)) {
	sprite_index = other.sprite_index;
	image_xscale = other.facing;
}
repeat(random_range(6,9)) {
	instance_create_layer(x,y-12,"Instances",obj_bloodBlob);
}

var snd = choose(snd_enemyHit1,snd_enemyHit2,snd_enemyHit3);
var pitch = random_range(0.9,1.1);
PlaySound(snd,pitch,0,1);