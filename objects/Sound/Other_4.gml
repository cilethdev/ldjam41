/// @description
if (room != m_main && room != m_settings) {
	introHasPlayed = false;
}
switch(room) {
	case m_main:
	case m_settings:
		if audio_is_playing(music_bigBoy) {
			audio_stop_sound(music_bigBoy);
		}
		if (!introHasPlayed) {
			introHasPlayed = true;
			if !audio_is_playing(music_menuIntro) {
				audio_stop_all();
				menuMusic = audio_play_sound(music_menuIntro,0,0);
				audio_sound_gain(music_menuIntro,(Sound.masterV*Sound.musicV*Sound.musicVolume)*Sound.mute,0);
			}
		}
	break;
	case rm_test:
	case level_1:
		//audio_stop_sound(music_menuIntro);
		//audio_stop_sound(music_menuLoop);
		
		if !audio_is_playing(music_bigBoy) {
			audio_stop_all();
			audio_play_sound(music_bigBoy,0,1);
			audio_sound_gain(music_bigBoy,0,0);
			audio_sound_gain(music_bigBoy,(Sound.masterV*Sound.musicV*Sound.musicVolume)*Sound.mute,5000);
		}
	break;
	case level_2:
		if !audio_is_playing(music_freekyBeeky) {
			audio_stop_all();
			audio_play_sound(music_freekyBeeky,0,1);
			audio_sound_gain(music_freekyBeeky,0,0);
			audio_sound_gain(music_freekyBeeky,(Sound.masterV*Sound.musicV*Sound.musicVolume)*Sound.mute,5000);
		}
	break;
	case level_3:
		if !audio_is_playing(music_rainDown) {
			audio_stop_all();
			audio_play_sound(music_rainDown,0,1);
			audio_sound_gain(music_rainDown,0,0);
			audio_sound_gain(music_rainDown,(Sound.masterV*Sound.musicV*Sound.musicVolume)*Sound.mute,5000);
		}
	break;
}