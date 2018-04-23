/// @description 
event_inherited(); //collision

//crush and falling
if place_meeting(x,y,obj_solid) {
	PlayerDeath();
}
if y > room_height+32 {
	PlayerDeath();
}
if hp <= 0 {
	PlayerDeath();
}

#region Animation control
if (!dashing && !onWall) {
	facing = (x < mouse_x)? 1 : -1;
}

xscale = Approach(xscale,1,0.05);
yscale = Approach(yscale,1,0.05);

wpnXScale = Approach(wpnXScale,1,0.04);
wpnYScale = Approach(wpnYScale,1,0.04);


if (!onGround) {
	if (!onWall) {
		animationState = JUMP;
	} else {
		animationState = ONWALL;
	}
}

if (dashing) {
	animationState = ROLL;
}

switch(animationState) {
	case IDLE:
		sprite_index = spr_playerIdle;
	break;
	case RUN:
		if (facing == 1) {
			sprite_index = (vx > 0)? spr_playerRun : spr_playerRunBack;
		} else {
			sprite_index = (vx > 0)? spr_playerRunBack : spr_playerRun;
		}
		
		//sfx
		var frame = floor(image_index);
		if (frame == 1 || frame == 3) {
			//SFX
			if (!footStepPlayed) {
				footStepPlayed = true;
				var snd = choose(snd_footstep1,snd_footstep2,snd_footstep3,snd_footstep4);
				var pitch = random_range(0.9,1);
				PlaySound(snd,pitch,0,1);
				
				//Dust
				var dust = instance_create_depth(x-(8*sign(vx)),y+random_range(0,-2),depth-10,obj_dust);
				dust.image_angle = choose(0,90,180,270);
			}
		}
		if (frame != 1 && frame != 3) {
			footStepPlayed = false;
		}
		
	break;
	case JUMP:
		if !onWall {
			sprite_index = (vy < 0)? spr_playerJump : spr_playerFall;
		}
	break;
	case ONWALL:
			sprite_index = spr_playerSlide;
		if (cLeft) {
			facing = -1;
		} else {
			facing = 1;
		}
	break;
	case ROLL:
		if sprite_index != spr_playerRoll {
			sprite_index = spr_playerRoll;
		}
	break;
}

#endregion