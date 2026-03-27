function scrpt_removePatientCall(patient){
	for(var i = 0; i < array_length(global.patient_calls); i++){
		var curr = global.patient_calls[i];
		if(curr != noone){
			if(curr.patient_name == patient.patient_name &&
			curr.patient_surname == patient.patient_surname){
				curr.patient_status = "In hospital";
				show_debug_message("Patient delivered and deleted");
				patient.delivered = true;
				global.score += 1;
				//global.patient_calls[i] = noone;
			}
		}
	}
}