if location1 != 0  && can_send {
		can_send = false;
		show_debug_message("on way to location 1");
		time = scrpt_car_time_calc(location1, location_curr, false);
		alarm_set(1, 60*time);	
		alarm_set(3, 60* megaTimer());
}

function megaTimer(){
	var time1 = scrpt_car_time_calc(location1, location_curr, false);
	var time2 = 0;
	var time3 = 0;
	if(location2 > 0){
		time2 = scrpt_car_time_calc(location2, location1, true);
		time3 = scrpt_car_time_calc(location2, location2, false);
		return time1 + time2 + time3;
	}
	else{
		return time1 + time1;
	}
}