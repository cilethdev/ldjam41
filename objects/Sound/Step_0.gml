/// @description 
if (room == m_main || room == m_settings) {
	if (introHasPlayed) {
		var _pos = audio_sound_get_track_position(menuMusic);
		trackPos = _pos;
		if (_pos > intro_length-0.04) {
			introHasPlayed = true;
			if !audio_is_playing(music_menuLoop) {
				menuMusic = audio_play_sound(music_menuLoop,0,1);
				audio_sound_set_track_position(menuMusic,-_pos);
				audio_sound_gain(menuMusic,(Sound.masterV*Sound.musicV*Sound.musicVolume)*Sound.mute,0);
			}
		}
				
	}
	if keyboard_check_pressed(ord("T")) {
		audio_sound_set_track_position(menuMusic,92);
	}
}