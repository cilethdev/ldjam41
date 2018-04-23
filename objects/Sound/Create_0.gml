/// @description 
event_inherited();
ini_open("settings.ini");
	masterV	= ini_read_real("settings","masterV",1);
	musicV	= ini_read_real("settings","musicV",1);
	sfxV	= ini_read_real("settings","sfxV",1);
	mute	= ini_read_real("settings","mute",1);
	musicVolume  = ini_read_real("settings","musicVolume",1);
ini_close();

showSoundSettings = false;

musicPlaying = -1;


menuMusic = -1;

trackPos = 0;

introHasPlayed = false;
intro_length = 97.74;
loop_length	 = 93.642;
total_length = intro_length+loop_length;
