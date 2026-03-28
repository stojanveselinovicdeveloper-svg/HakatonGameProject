location_curr = location2;
show_debug_message("on the way back to hospital");
time = scrpt_car_time_calc(location2, location_curr, false);
alarm_set(0, 60*time);
