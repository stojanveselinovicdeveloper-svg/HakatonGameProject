

if location2 != 0 {
	//time calc if same house or not
	if location2 == location1{
		location_curr = location1;
		show_debug_message("on the way back to hospital " );
		show_debug_message(string(location1));
		alarm_set(0, 60*10*time);
	}
	else {
		location_curr = location1;
		show_debug_message("on way to location 2");
		time = scrpt_car_time_calc(location2, location_curr, true);
		alarm_set(2, 60*10*time);
	}
}
if location2 == 0{
	location_curr = location1;
	show_debug_message("on the way back to hospital");
	alarm_set(0, 60*10*time);
}
