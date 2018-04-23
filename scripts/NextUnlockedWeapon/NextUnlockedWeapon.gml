var _nextWeapon;
_nextWeapon = weapon+1;
if (_nextWeapon < 5) {
	if wpnUnlocked[_nextWeapon] != true {
		_nextWeapon = 0;
	} 
} else {
	_nextWeapon = 0;
}
return _nextWeapon;

	