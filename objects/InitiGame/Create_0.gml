/// @description 
display_set_gui_size(960,540);

//Initialze singletons
instance_create_layer(0,0,"Instances",Input);
instance_create_layer(0,0,"Instances",Sound);
instance_create_layer(0,0,"Instances",RoomManager);
instance_create_layer(0,0,"Instances",Camera);
instance_create_layer(0,0,"Instances",Pause);

room_goto_next();