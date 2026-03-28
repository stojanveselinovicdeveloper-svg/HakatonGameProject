call_in_progress = false; // User is on the right screen
call_pending = false; // Call is in progress but user is not on the right screen
call_answered = false; // Weather user answered
target_room = rm_game;
disabled = false;

min_call_delay = game_get_speed(gamespeed_fps) * 5;
max_call_delay = game_get_speed(gamespeed_fps) * 15;
next_call_timer = irandom_range(min_call_delay, max_call_delay);

pickup_timer_min = game_get_speed(gamespeed_fps) * 7;
pickup_timer_max = game_get_speed(gamespeed_fps) * 9;
call_progress_timer = irandom_range(pickup_timer_min,pickup_timer_max);
caller_screen_popup = noone;
call_priority = 5;
call_limit = 10;

// Data related
var active_len = array_length(global.active_patients);
var pending_patients_len = array_length(global.patient_calls);
patients_in_progress = active_len + pending_patients_len;
