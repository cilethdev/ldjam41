///@desc cutscene_fade_in
///@arg time

if (!fadeStarted) {
	fadeStarted = true;
	fade = 1;
	fadeTarget = 0;
}
fade = Approach(fade,fadeTarget,1/(argument0*room_speed));

if (fade == 0) {
	fadeStarted = false;
	cutscene_end_action();
}
