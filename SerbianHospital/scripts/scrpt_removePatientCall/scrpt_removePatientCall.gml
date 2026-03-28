function scrpt_removePatientCall(patient){
	for(var i = 0; i < array_length(global.patient_calls); i++){
		var curr = global.patient_calls[i];
		if(curr != noone){
			if(curr.patient_name == patient.patient_name &&
			curr.patient_surname == patient.patient_surname){
				if(patient.patient_status != "Deceased"){
					curr.patient_status = "In hospital";
					show_debug_message("Patient delivered and deleted");
					patient.delivered = true;
					//global.score += 1;
				}
				else{
					show_debug_message("Patient died and deleted")
				}
				if(!array_contains(global.active_patients, patient)){
				array_push(global.active_patients, curr);
				}
				array_delete(global.patient_calls, i, 1);
				with(obj_kuce){
					active_injured -= 1;
					injured_loaded -= 1;
				}
				break;
			}
		}
	}
}