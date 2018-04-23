/// @description
if (currentRm == prevRm) {
	switch(room) {
		case level_1:
			wpnUnlocked[weapons.pistol]		= true;
			wpnUnlocked[weapons.rifle]		= false;
			wpnUnlocked[weapons.shotgun]	= false;
			wpnUnlocked[weapons.sniper]		= false;
			wpnUnlocked[weapons.rockets]	= false;
		break;
		case level_2:
			wpnUnlocked[weapons.pistol]		= true;
			wpnUnlocked[weapons.rifle]		= true;
			wpnUnlocked[weapons.shotgun]	= false;
			wpnUnlocked[weapons.sniper]		= false;
			wpnUnlocked[weapons.rockets]	= false;
		break;
		case level_3:
			wpnUnlocked[weapons.pistol]		= true;
			wpnUnlocked[weapons.rifle]		= true;
			wpnUnlocked[weapons.shotgun]	= true;
			wpnUnlocked[weapons.sniper]		= true;
			wpnUnlocked[weapons.rockets]	= false;
		break;
		default:
			wpnUnlocked[weapons.pistol]		= true;
			wpnUnlocked[weapons.rifle]		= false;
			wpnUnlocked[weapons.shotgun]	= false;
			wpnUnlocked[weapons.sniper]		= false;
			wpnUnlocked[weapons.rockets]	= false;
		break;
	}
}

if instance_exists(obj_player) {
	if (room == level_1) {
		wpnUnlocked[weapons.pistol]		= true;
		wpnUnlocked[weapons.rifle]		= false;
		wpnUnlocked[weapons.shotgun]	= false;
		wpnUnlocked[weapons.sniper]		= false;
		wpnUnlocked[weapons.rockets]	= false;

		with(obj_player) {
			weapon = weapons.pistol;
			wpnUnlocked[weapons.pistol]		= true;
			wpnUnlocked[weapons.rifle]		= false;
			wpnUnlocked[weapons.shotgun]	= false;
			wpnUnlocked[weapons.sniper]		= false;
			wpnUnlocked[weapons.rockets]	= false;
		}
	} else {
		with(obj_player) {
			weapon = (other.currentRm != other.prevRm)? other.lastEquipped : weapons.pistol;
			wpnUnlocked[weapons.pistol]		= other.wpnUnlocked[weapons.pistol];
			wpnUnlocked[weapons.rifle]		= other.wpnUnlocked[weapons.rifle];
			wpnUnlocked[weapons.shotgun]	= other.wpnUnlocked[weapons.shotgun];
			wpnUnlocked[weapons.sniper]		= other.wpnUnlocked[weapons.sniper];
			wpnUnlocked[weapons.rockets]	= other.wpnUnlocked[weapons.rockets];
		}
	}
}

currentRm    = room;