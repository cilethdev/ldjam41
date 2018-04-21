/// @description 
var current_scene = scene_info[scene];
var len = array_length_1d(current_scene)-1;
switch(len) {
	case 0: script_execute(current_scene[0]) break;
	case 1: script_execute(current_scene[0],current_scene[1]) break;
	case 2: script_execute(current_scene[0],current_scene[1],current_scene[2]) break;
	case 3: script_execute(current_scene[0],current_scene[1],current_scene[2],current_scene[3]) break;
	case 4: script_execute(current_scene[0],current_scene[1],current_scene[2],current_scene[3],current_scene[4]) break;
	case 5: script_execute(current_scene[0],current_scene[1],current_scene[2],current_scene[3],current_scene[4],current_scene[5]) break;
	case 6: script_execute(current_scene[0],current_scene[1],current_scene[2],current_scene[3],current_scene[4],current_scene[5],current_scene[6]) break;
	case 7: script_execute(current_scene[0],current_scene[1],current_scene[2],current_scene[3],current_scene[4],current_scene[5],current_scene[6],current_scene[7]) break;
	case 8: script_execute(current_scene[0],current_scene[1],current_scene[2],current_scene[3],current_scene[4],current_scene[5],current_scene[6],current_scene[7],current_scene[8]) break;
	case 9: script_execute(current_scene[0],current_scene[1],current_scene[2],current_scene[3],current_scene[4],current_scene[5],current_scene[6],current_scene[7],current_scene[8],current_scene[9]) break;
}