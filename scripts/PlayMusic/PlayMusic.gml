/// @desc PlayMusic(music,volume,loops);
/// @arg music
/// @arg volume
/// @arg loops
var _music,_volume,_loops;
_music = argument0;
_volume = argument1;
_loops = argument2;

if !audio_is_playing(_music) {
	audio_stop_sound(Sound.musicPlaying);
	Sound.musicPlaying = _music;
	Sound.musicVolume  = _volume;
	audio_play_sound(_music,0,_loops);
	audio_sound_gain(_music,(Sound.masterV*Sound.musicV*Sound.musicVolume)*Sound.mute,0);
} 