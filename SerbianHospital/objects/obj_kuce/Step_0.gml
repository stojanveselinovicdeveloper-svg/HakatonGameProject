var injured = array_length(global.patient_calls);

if(injured > active_injured && active_injured < 6){
	var curr = global.patient_calls[injured - 1];
	var curr_house = curr.patient_address - 1;
	for(var j = 0; j < 5; j++){
		if(residents[curr_house][j] == noone){
			residents[curr_house][j] = instance_create_layer(0,0,"Instances", obj_injured);
			residents[curr_house][j].init_patient(curr.patient_name, curr.patient_surname, curr.patient_age, curr.patient_status, curr.patient_address);
				show_debug_message("Patient placed");
				active_injured += 1;
				break;
				}	
		}
}