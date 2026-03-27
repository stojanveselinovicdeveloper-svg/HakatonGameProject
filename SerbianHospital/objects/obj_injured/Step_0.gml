if(patient_init && !countdownInit){
	alarm_set(0, 60*10*random_range(3,6));
	countdownInit = true;
}


if(delivered){
	show_debug_message("Destroying instance");
	instance_destroy(self);
}
