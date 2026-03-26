var kuca = location1-1;
if(obj_kuce.residents[kuca] != noone){
	with(obj_kuce){
		//removing patient
		var name = obj_kuce.residents[kuca].name;
		var status = obj_kuce.residents[kuca].status;
		obj_kuce.residents[kuca] = noone;
		//adding patient
		with(obj_tab_patient_room){
			for (var i = 0; i < 6; i++) {
				if beds[i] == noone {
					show_debug_message("Patient delivered");
					beds[i] = new Patient(name, status) ;
					break;
				}
			}
		}
	}
	
	
}
else{
	show_debug_message("There was no patient to be delivered");
}
	

location1 = 0;
location2 = 0;
location_curr = 0;
can_send = true;
