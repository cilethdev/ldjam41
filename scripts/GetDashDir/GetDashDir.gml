var dir = (facing)? 0 : 180;


if Input.kLeft {
	dir = 180;
}

if Input.kRight {
	dir = 0;
}

return dir;