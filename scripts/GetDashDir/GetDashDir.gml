var dir = (facing)? 0 : 180;


if Input.kLeft {
	dir = 180;
	if Input.kUp {
		dir = 135;
	} else
	if Input.kDown {
		dir = 225;
	}
}

if Input.kRight {
	dir = 0;
	if Input.kUp {
		dir = 45;
	} else
	if Input.kDown {
		dir = 315;
	}
}

if Input.kUp && (!Input.kLeft && !Input.kRight) {
	dir = 90;
}

if Input.kDown && (!Input.kLeft && !Input.kRight) {
	dir = 270;
}



return dir;