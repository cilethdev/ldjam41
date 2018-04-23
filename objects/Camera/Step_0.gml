/// @description 

if !instance_exists(obj_player) {
	
	//camera_set_view_pos(cam,0,0);
} else {
	if instance_exists(obj_cameraFocus) {
		target = obj_cameraFocus;
	} else {
		if target == obj_player {
			lerpx = Approach(lerpx,defaultLerpx,1);
			lerpy = Approach(lerpy,defaultLerpy,1);
		}
	}
	if instance_exists(Reticle) {
		var zoom,pdir,dis,ldirx,ldiry,;
		zoom = (obj_player.weapon = weapons.sniper)? 320 : 96;
		pdir = point_direction(target.x,target.y-16,mouse_x,mouse_y);
		dis  = (Input.mRight)? zoom : 16;
		ldirx = lengthdir_x(dis,pdir);
		ldiry = lengthdir_y(dis,pdir);
		x = ReachTween(x,target.x+ldirx,lerpx);
		y = ReachTween(y,target.y-16+ldiry,lerpy);
	} else {
		x = ReachTween(x,target.x,lerpx);
		y = ReachTween(y,target.y-8,lerpy);
	}
	
	if shake {
		shake = Approach(shake,0,0.5);
		x += shake*choose(-1,1);
		y += shake*choose(-1,1);
	}
	
	var posx,posy;
	posx = x-camw/2;
	posy = y-camh/2;
	
	posx = clamp(posx,0,room_width-camw);
	posy = clamp(posy,y-camh/2,room_height-camh);
	
	camera_set_view_pos(cam,posx+shake,posy+shake);
}

