///@desc cutscene_fade_in
///@arg time

if (!fadeStarted) {
	fadeStarted = true;
	fade = 0;
	fadeTarget = 1;
}
fade = Approach(fade,fadeTarget,1/(argument0*room_speed));

if (fade == 1) {
	fadeStarted = false;
	cutscene_end_action();
}
