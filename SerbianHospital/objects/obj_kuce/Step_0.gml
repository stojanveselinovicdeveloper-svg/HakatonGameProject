var injured = array_length(global.patient_calls);

if(injured > active_injured && active_injured < 6){
	var curr_patient = global.patient_calls[injured - 1];
	var curr_house = curr_patient.patient_address - 1;
	for(var j = 0; j < 5; j++){
		if(residents[curr_house][j] == noone){
			residents[curr_house][j] = new Injured(curr_patient.patient_name, curr_patient.patient_surname,curr_patient.patient_age ,curr_patient.patient_status, curr_patient.patient_address);	
				show_debug_message("Patient placed");
				active_injured += 1;
				break;
				}	
		}
}