/// @description 
camx = camera_get_view_x(cam);
camy = camera_get_view_y(cam);

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
