/// @description 
if (delay) {
	delay--
	exit;
}
x = Approach(x,xtarget,2);
if x == xtarget {
	sprite_index = spr_playerIdle;
}