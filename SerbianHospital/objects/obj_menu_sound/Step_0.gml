var is_menu_section = (room == rm_menu || room == rm_option || room == rm_credits );
var is_game_section = (room == rm_game || room == rm_monitor_display);
var is_monitor_section = room == rm_monitor_display;

if (is_menu_section && !is_menu_sound_playing){
	audio_play_sound(snd_main_menu,8,true);
	is_menu_sound_playing = true;
}

if (is_game_section && !is_game_sound_playing){
	audio_play_sound(snd_game_sound,8,true);
	is_game_sound_playing = true;
}

if (is_monitor_section && !is_fan_sound_playing){
	audio_play_sound(snd_fan,8,true);
	is_fan_sound_playing = true;
}

if (!is_monitor_section && is_fan_sound_playing){
	audio_stop_sound(snd_fan);
	is_fan_sound_playing = false;
}

if (!is_menu_section && is_menu_sound_playing) {
	audio_stop_sound(snd_main_menu);
	is_menu_sound_playing = false;
}

if (!is_game_section && is_game_sound_playing){
	audio_stop_sound(snd_game_sound);
	is_game_sound_playing = false;
}
