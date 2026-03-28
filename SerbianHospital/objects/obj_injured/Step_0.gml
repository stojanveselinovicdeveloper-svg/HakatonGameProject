if(patient_init && !countdownInit){
	var time = scrpt_lifeTime(patient_priority);
	alarm_set(0, 60*10*time);
	countdownInit = true;
}


if(delivered && inHouse){
	remove_from_house();
	inHouse = false;
	show_debug_message("Moved from house to hospital");
	patient_status = "Recovering";
	alarm_set(1, 60*10*random_range(3,6));
}

if(patient_status = "Stable" && released){
	show_debug_message("Patient released successfully");
	global.score += 1;
	instance_destroy(self);
}
if(patient_status != "Stable" && released){
	show_debug_message("Patient saved but released early, no score");
	instance_destroy(self);
}
