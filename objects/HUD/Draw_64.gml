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