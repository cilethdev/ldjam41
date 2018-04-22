/// @description 
if (!instance_exists(obj_cutscene)) {
	room_goto_next();
}
if keyboard_check_pressed(vk_escape) {
	room_goto_next();
}