/// @description 
var w = weapon;
with(obj_player) {
	weapon = w;
	wpnUnlocked[w] = true;
	UnlockTracker.wpnUnlocked[w] = true;
	ammo = wpn[w,weaponProperties.ammoClip];
	fireRate = wpn[w,weaponProperties.fireRate];
	canFire = false;
	fireCD = 30;
}



//UNLOCK TEXT
var txt = instance_create_layer(0,0,"HUD",obj_unlockText);
txt.text = text;
txt.weapon = w;

instance_destroy();