if location1 != 0  && can_send {
	can_send = false;
	show_debug_message("on way to location 1");
	time = scrpt_car_time_calc(location1, location_curr, false);
	alarm_set(1, 60*10*time);
	
}
