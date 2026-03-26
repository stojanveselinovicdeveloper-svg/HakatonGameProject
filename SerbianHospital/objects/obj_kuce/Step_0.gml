if(notLoaded){
	for(var i = 0; i < 10; i++){
		var curr_patient = global.active_patients[i];
	var curr_house = curr_patient.address - 1;
	for(var j = 0; j < 5; j++){
		if(residents[curr_house][j] == noone){
			residents[curr_house][j] = new Injured(curr_patient.name, curr_patient.surname,curr_patient.age ,curr_patient.status, curr_patient.address);	
				show_debug_message("Patient placed");
				//active_injured += 1;
				break;
				}	
		}
	}
	notLoaded = false;
}