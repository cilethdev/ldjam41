/// @description 
if (delay) delay--;
alpha = Approach(alpha,0.75,0.75/60);
if (!delay) {
	if keyboard_check_pressed(vk_escape) {
		room_goto(m_main);
	}
	if keyboard_check_pressed(ord("R")) {
		room_restart();
	}
}