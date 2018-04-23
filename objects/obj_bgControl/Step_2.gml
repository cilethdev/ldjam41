/// @description 
camx = camera_get_view_x(cam);
camy = camera_get_view_y(cam);

switch(room) {
	case level_1:
		//bg
		layer_x("Sky",camx);
		layer_y("Sky",camy);

		layer_x("Buildings1",camx*0.95);
		layer_y("Buildings1",camy*0.8);
		layer_x("Buildings2",camx*0.925);
		layer_y("Buildings2",camy*0.85);
		layer_x("Buildings3",camx*0.9);
		layer_y("Buildings3",camy*0.9);
		layer_x("Buildings4",camx*0.875);
		layer_y("Buildings4",camy*0.95);
	break;
	case level_2://bg
		layer_x("Sky",camx*0.98);
		layer_y("Sky",camy);
		
		layer_x("Crates1",camx*0.95);
		layer_y("Crates1",camy*0.8);
		layer_x("Crates2",camx*0.925);
		layer_y("Crates2",camy*0.85);
	
	break;
}

