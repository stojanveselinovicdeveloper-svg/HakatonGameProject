call_in_progress = false; // User is on the right screen
call_pending = false; // Call is in progress but user is not on the right screen
call_answered = false; // Weather user answered
target_room = rm_game;
disabled = false;

<<<<<<< HEAD
min_call_delay = game_get_speed(gamespeed_fps) * 15;
max_call_delay = game_get_speed(gamespeed_fps) * 25;
=======
min_call_delay = game_get_speed(gamespeed_fps) * 45;
max_call_delay = game_get_speed(gamespeed_fps) * 60;
>>>>>>> parent of ffa4c99 (Merge pull request #24 from stojanveselinovicdeveloper-svg/test/1-katas-evil-testing-branch)
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
