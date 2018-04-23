/// @description
#region Movement
if !canMove exit;
var tempAcc,tempFric,tempGrav,tempMaxGrav;
tempAcc		= acc;
tempFric	= fric;
tempGrav	= grav;
tempMaxGrav = vyMax;

if (!dashing) {
	if (!onGround) {
		tempAcc	 = airAcc;
		tempFric = airFric;
	
		if (onWall && vy > 0) {
			tempGrav	= 0.2;
			tempMaxGrav = 2;
		}
	
		vy = Approach(vy,tempMaxGrav,tempGrav);
	
	} else {
		vy = 0;
	}
}

if (!wallJumpT) {
	if (Input.kLeft) {
		if (onGround && !dashing) {
			animationState = RUN;
		}
		if (!onWall) {
			if (!slide) {
				vx = Approach(vx,-vxMax,tempAcc);
			} else {
				if (!onGround) {
					if (vx > 0) {
						if (slide) slide--;
						vx = Approach(vx,-vxMax,tempAcc);
					}
				}
			}
		} else {
			if (cRight) {
				wallStick++;
				if (wallStick == 10) {
					onWall = false;
				}
			}
		}
	}

	if (Input.kRight) {
		if (onGround && !dashing) {
			animationState = RUN;
		}
		if (!onWall) {
			if (!slide) {
				vx = Approach(vx,vxMax,tempAcc);
			} else {
				if (!onGround) {
					if (vx < 0) {
						if slide slide--;
						vx = Approach(vx,vxMax,tempAcc);
					}
				}
			}
		} else {
			if (cLeft) {
				wallStick++;
				if (wallStick == 10) {
					onWall = false;
				}
			}
		}
	}
}

if (!Input.kLeft && !Input.kRight && !dashing && !slide && !wallJumpT) {
	vx = Approach(vx,0,tempFric);
	if (onGround && !dashing) {
		animationState = IDLE;
	}
}

if (Input.kJumpP && !dashing) {
	if (onWall) {
		if (cLeft && !onGround) {
			if Input.kLeft {
				facing = 1;
				vx = vxMax*0.9;
				vy = jspd;
				onWall = false;
				wallJumpT = 5;
				wallStick = 0;
			} else {
				facing = 1;
				vx = vxMax;
				vy = jspd;
				onWall = false;
				wallJumpT = 30;
				wallStick = 0;
			}
			
			//sfx
			PlaySound(snd_jump,1,0,1);
		}
		if (cRight && !onGround) {
			if Input.kRight {
				facing = -1;
				vx = -vxMax*0.9;
				vy = jspd;
				onWall = false;
				wallJumpT = 5;
				wallStick = 0;
			} else {
				facing = -1;
				vx = -vxMax;
				vy = jspd;
				onWall = false;
				wallJumpT = 30;
				wallStick = 0;
			}
			
			//sfx
			PlaySound(snd_jump,1,0,1);
		}
		jNum = 1;
		if (slide) slide = 2;
	} else
	if (jNum < jMax && onGround) {
		jNum++;
		vy = jspd;
		bounce = false;
		
		//sfx
		PlaySound(snd_jump,1,0,1);
	
		//vfx
		xscale = 0.5;
		yscale = 1.5;
	
	}
}
if (Input.kJumpR && vy < -2 && !bounce) {
	vy = -2;
}


//WallJump timers
if (wallJumpT) wallJumpT--;

//Pass thru
if ((place_meeting(x,y+1,obj_passThru) && !place_meeting(x,y+1,obj_solid)) && Input.kDown) {
	y += 1;
}

if (Input.kDash && canDash && onGround) {
	canDash = false;
	dashCD	= 30;
	dashing = true;
	dashT	= 20;
	dashDir = GetDashDir();
	
	//SFX
	PlaySound(snd_jump,1.1,0,0.8);
}	
if (dashing) {
	SetDashVelocity();
	animationState = ROLL;
	
	//if (dashT < 5 && !place_meeting(x+(32*facing),y+1,obj_solid)) {
	//	vx = 0;
	//}
	
	if (dashT > 0) dashT--;
	if (dashT == 0 || !onGround) {
		dashT = -1;
		dashing = false;
		if (dashDir == 0) { // && place_meeting(x+(32*facing),y+1,obj_solid)) {
			vx = 6;
		} else
		if (dashDir = 180) { //&& place_meeting(x+(32*facing),y+1,obj_solid)) {
			vx = -6;
		}
		//if (dashT < 5 && !place_meeting(x+(32*facing),y+1,obj_solid)) {
		//	vx = 0;
		//}
	}
}

if (dashCD > 0) dashCD--;
if (dashCD == 0) {
	dashCD = -1;
	canDash = true;
}

if (slide && (onGround || cLeft || cRight)) {
	slide--;
}

//image_blend = (slide)? c_aqua : c_white;
#endregion

#region Attack
wpnAngle = point_direction(x,y-wpnYOff,mouse_x,mouse_y);
//if (!attackCD && !onWall && Input.kAttackP) {
//	attackCD = 30;
//	hitBox = HitBoxCreate(24*facing,20,4*facing,-16,5,2+abs(vx/2),-4,0);	
//}
//if (attackCD) attackCD--;

//Shooting
if (Input.mLeft && canFire && (ammo > 0) && !reloading && !dashing && !onWall) {
	var ldirx,ldiry;
	ldirx = lengthdir_x(wpn[weapon,weaponProperties.offset]+16,wpnAngle);
	ldiry = lengthdir_y(wpn[weapon,weaponProperties.offset]+16,wpnAngle);
	if (weapon == weapons.shotgun) {
		for(i=0;i<3;i++) {
			var spread = random_range(-10,10);
			var bullet = instance_create_layer(x+ldirx,y-wpnYOff+ldiry,"Instances",wpn[weapon,weaponProperties.object]);
			bullet.sprite_index = wpn[weapon,weaponProperties.bulletSprite];
			bullet.image_angle	= wpnAngle+spread;
			bullet.dir	= wpnAngle+spread;
			bullet.spd = wpn[weapon,weaponProperties.bulletSpeed];
			bullet.team = team;
			bullet.range = wpn[weapon,weaponProperties.range];
			bullet.dmg = wpn[weapon,weaponProperties.damage];
		}
			canFire = false;
			fireCD	= wpn[weapon,weaponProperties.fireRate];
			ammo--;
		} else {
			var bullet = instance_create_layer(x+ldirx,y-wpnYOff+ldiry,"Instances",wpn[weapon,weaponProperties.object]);
			bullet.sprite_index = wpn[weapon,weaponProperties.bulletSprite];
			bullet.image_angle	= wpnAngle;
			bullet.dir	= wpnAngle;
			bullet.spd = wpn[weapon,weaponProperties.bulletSpeed];
			bullet.team = team;
			bullet.range = wpn[weapon,weaponProperties.range];
			bullet.dmg = wpn[weapon,weaponProperties.damage];
			canFire = false;
			fireCD	= wpn[weapon,weaponProperties.fireRate];
			ammo--;
		}
		
	
	//SFX
	var snd = wpn[weapon,weaponProperties.soundEffect];
	var pitch = random_range(0.95,1.0);
	PlaySound(snd,pitch,0,1);
	
	//VFX
	var bldirx,bldiry;
	bldirx = lengthdir_x(wpn[weapon,weaponProperties.barrelOffset]+16,wpnAngle);
	bldiry = lengthdir_y(wpn[weapon,weaponProperties.barrelOffset]+16,wpnAngle);
	var flash = instance_create_depth(x+bldirx,y-wpnYOff+bldiry,-1000,obj_muzzleFlash);
	var smoke = instance_create_depth(x+bldirx,y-wpnYOff+bldiry,-1001,obj_muzzleSmoke);
	if (weapon != weapons.rockets) {
		var casing = instance_create_depth(x,y-wpnYOff,-1000,obj_bulletCasing);
		casing.vx = -facing*random_range(1,4);
		casing.vy = random_range(-3,-4);
		if weapon == weapons.shotgun {
			casing.sprite_index = spr_shellCasing;
		}
	}
	
	wpnXScale = wpn[weapon,weaponProperties.shootXScale];
	wpnYScale = wpn[weapon,weaponProperties.shootYScale];
	Camera.shake = wpn[weapon,weaponProperties.cameraShake];
}

//FireCD
if (fireCD > 0) fireCD--;
if (fireCD == 0) {
	fireCD = -1;
	canFire = true;
}

//Reload
if (Input.kReload && !reloadT && !reloading && (ammo < wpn[weapon,weaponProperties.ammoClip])) || (ammo == 0 && !reloading) {
	reloading = true;
	reloadT = wpn[weapon,weaponProperties.reloadTime];
	
	//SFX
	var snd = wpn[weapon,weaponProperties.soundReload];
	PlaySound(snd,1,0,0.8);
}
if (reloadT > 0) reloadT--;
if (reloadT == 0) {
	reloadT = -1;
	reloading = false;
	ammo = wpn[weapon,weaponProperties.ammoClip];
}

#endregion

#region weapon switching
if (keyboard_check_pressed(ord("1")) && weapon != weapons.pistol) {
	if (wpnUnlocked[weapons.pistol] == true) {
		weapon = weapons.pistol;
		ammo = wpn[weapon,weaponProperties.ammoClip];
		fireRate = wpn[weapon,weaponProperties.fireRate];
		canFire = false;
		fireCD = 30;
	}
}
if (keyboard_check_pressed(ord("2")) && weapon != weapons.rifle) {
	if (wpnUnlocked[weapons.rifle] == true) {
		weapon = weapons.rifle;
		ammo = wpn[weapon,weaponProperties.ammoClip];
		fireRate = wpn[weapon,weaponProperties.fireRate];
		canFire = false;
		fireCD = 30;
	}
}
if (keyboard_check_pressed(ord("3")) && weapon != weapons.shotgun) {
	if (wpnUnlocked[weapons.shotgun] == true) {
		weapon = weapons.shotgun;
		ammo = wpn[weapon,weaponProperties.ammoClip];
		fireRate = wpn[weapon,weaponProperties.fireRate];
		canFire = false;
		fireCD = 30;
	}
}
if (keyboard_check_pressed(ord("4")) && weapon != weapons.sniper) {
	if (wpnUnlocked[weapons.sniper] == true) {
		weapon = weapons.sniper;
		ammo = wpn[weapon,weaponProperties.ammoClip];
		fireRate = wpn[weapon,weaponProperties.fireRate];
		canFire = false;
		fireCD = 30;
	}
}
if (keyboard_check_pressed(ord("5")) && weapon != weapons.rockets) {
	if (wpnUnlocked[weapons.rockets] == true) {
		weapon = weapons.rockets;
		ammo = wpn[weapon,weaponProperties.ammoClip];
		fireRate = wpn[weapon,weaponProperties.fireRate];
		canFire = false;
		fireCD = 30;
	}
}

if (mouse_wheel_up()) {
	var nextWeapon = (weapon+1) mod 5;
	if (wpnUnlocked[nextWeapon] == true) {
		weapon = nextWeapon;
		ammo = wpn[weapon,weaponProperties.ammoClip];
		fireRate = wpn[weapon,weaponProperties.fireRate];
		canFire = false;
		fireCD = 30;
	}
}

if (mouse_wheel_down()) {
	var nextWeapon;
	if weapon - 1 < 0 {
		nextWeapon = 4;
	} else {
		nextWeapon = weapon-1;
	}
	if (wpnUnlocked[nextWeapon] == true) {
		weapon = nextWeapon;
		ammo = wpn[weapon,weaponProperties.ammoClip];
		fireRate = wpn[weapon,weaponProperties.fireRate];
		canFire = false;
		fireCD = 30;
	}
}

#endregion