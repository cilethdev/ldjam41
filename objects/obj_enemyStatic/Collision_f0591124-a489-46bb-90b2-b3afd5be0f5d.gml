/// @description 
if other.team != team {
	with(other) { instance_destroy() }
	hp -= other.dmg;
	
	//VFX
	xscale = 0.7;
	yscale = 1.3;
	
	//SFX
	PlaySound(snd_hitmark,1,0,0.6);
}