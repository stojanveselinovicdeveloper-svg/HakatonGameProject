if location != 0  && location != -1 && can_send {
	show_debug_message("location change");
	time = scrpt_car_time_calc(location);
	alarm_set(0, 60*10*time);
	can_send = false;
}
