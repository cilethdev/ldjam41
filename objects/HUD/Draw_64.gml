/// @description

FontSet(fnt_HUDBig,c_white,fa_left,fa_top);
draw_text(guiw*0.8,guih*0.9,string(obj_player.ammo) + " / --");

if (obj_player.reloading) {
	draw_rectangle(guiw*0.8,guih*0.9-32,guiw*0.8+(obj_player.reloadT/obj_player.wpn[obj_player.weapon,weaponProperties.reloadTime])*64,guih*0.9-16,-1);
}

//Health
for(i=0;i<obj_player.hp;i++) {
	draw_sprite(spr_heart,0,32+(i*32),32);
}

//Weapons
FontSet(fnt_ending,c_white,fa_left,fa_middle);
for(i=0;i<array_length_1d(UnlockTracker.wpnUnlocked);i++) {
	var sil = (UnlockTracker.wpnUnlocked[i] == true)? c_white : c_black;
	var eqp = 0;
	if (instance_exists(obj_player)) {
		eqp = (obj_player.weapon == i)? 1.5: 1;
	}
	draw_text(4,guih*0.7+(i*32),string(i+1));
	draw_sprite_ext(spr_wpnHUD,i,8+(6*eqp),guih*0.7+(i*32),eqp,eqp,0,sil,1);
}