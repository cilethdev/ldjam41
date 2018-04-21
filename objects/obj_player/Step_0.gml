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
		if (!onWall) {
			facing = -1;
			if (!slide) {
				vx = Approach(vx,vxMax*facing,tempAcc);
			} else {
				if (!onGround) {
					if (vx > 0) {
						if (slide) slide--;
						vx = Approach(vx,vxMax*facing,tempAcc);
					}
				}
			}
		} else {
			if (cRight) {
				wallStick++;
				if (wallStick == 10) {
					onWall = false;
					wallJumpT = 10;
				}
			}
		}
	}

	if (Input.kRight) {
		if (!onWall) {
			facing = 1;
			if (!slide) {
				vx = Approach(vx,vxMax*facing,tempAcc);
			} else {
				if (!onGround) {
					if (vx < 0) {
						if slide slide--;
						vx = Approach(vx,vxMax*facing,tempAcc);
					}
				}
			}
				
		} else {
			if (cLeft) {
				wallStick++;
				if (wallStick == 10) {
					onWall = false;
					wallJumpT = 10;
				}
			}
		}
	}
}

if (!Input.kLeft && !Input.kRight && !dashing && !slide && !wallJumpT) {
	vx = Approach(vx,0,tempFric);
}

if (Input.kJumpP && !dashing) {
	if (onWall) {
		if (cLeft && !onGround) {
				facing = 1;
				vx = vxMax;
				vy = jspd;
				onWall = false;
				wallJumpT = 30;
				wallStick = 0;
		}
		if (cRight && !onGround) {
				facing = -1;
				vx = -vxMax;
				vy = jspd;
				onWall = false;
				wallJumpT = 30;
				wallStick = 0;
		}
		jNum = 1;
		if (slide) slide = 2;
	} else
	if (jNum < jMax) {
		jNum++;
		vy = jspd;
		bounce = false;
	
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

if (Input.kDash && canDash) {
	canDash = false;
	dashCD	= 30;
	dashing = true;
	dashT	= 10;
	dashDir = GetDashDir();
}	
if (dashing) {
	SetDashVelocity();
	if (dashT > 0) dashT--;
	if (dashT == 0) {
		dashT = -1;
		dashing = false;
		if (dashDir == 0) {
			vx = vxMax;
		} else
		if (dashDir = 180) {
			vx = -vxMax;
		}
	}
	if (onGround) {
		if (dashDir == 225 || dashDir == 315) {
			slide	= 6;
			dashT	= -1;
			dashing = false;
		}
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

image_blend = (slide)? c_aqua : c_white;
#endregion

#region Attack
if (!attackCD && !onWall && Input.kAttackP) {
	attackCD = 30;
	hitBox = HitBoxCreate(24*facing,20,4*facing,-16,5,2+abs(vx/2),-4,0);	
}
if (attackCD) attackCD--;
#endregion

