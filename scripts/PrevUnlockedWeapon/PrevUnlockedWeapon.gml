var _nextWeapon;
_nextWeapon = weapon-1;

if (_nextWeapon < 0) {
	for(i=0;i<5;i++) {
		if (wpnUnlocked[i] == true) {
			_nextWeapon++;
		}
	}
}
return _nextWeapon;