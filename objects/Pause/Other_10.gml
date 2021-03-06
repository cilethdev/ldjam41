/// @description 
var cam = view_get_camera(view_current);
var camx = camera_get_view_x(cam);
var camy = camera_get_view_y(cam);
var camw = camera_get_view_width(cam);
var camh = camera_get_view_height(cam);

//get surface
showPauseMenu = true;
if (!sprite_exists(pauseSprite)) {
	pauseSprite = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);
}

with(all) {
	if object_get_parent(object_index) != Singleton {
		instance_deactivate_object(id);
	}
}



resume   = instance_create_layer(camx+(camw/2),camy+(camh/2)-48,"Instances",obj_button);
resume.num = 0;
resume.text = "RESUME";
resume.type = bType.resume;
resume.xscale = 1.2;
resume.yscale = 1.2;
resume.depth = -1000;

endGame	 = instance_create_layer(camx+(camw/2),camy+(camh/2)+48,"Instances",obj_button);
endGame.num  = 1;
endGame.text = "EXIT LEVEL";
endGame.type = bType.endLevel;
endGame.rm   = m_main;
endGame.xscale = 1.2;
endGame.yscale = 1.2;
endGame.depth = -1000;

cursor	= instance_create_layer(mouse_x,mouse_y,"BGControl",obj_cursor);
cursor.depth = -10000;

nItems = instance_number(par_menuItem)-1;


