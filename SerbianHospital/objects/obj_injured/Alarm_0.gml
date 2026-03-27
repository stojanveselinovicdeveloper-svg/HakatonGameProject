
if(!delivered) {
	for(var i = 0; i < array_length(global.patient_calls); i++){
		var curr = global.patient_calls[i];
		if(curr != noone){
			if(curr.patient_name == patient_name && curr.patient_surname == patient_surname){
				curr.patient_status = "Deceased";
			}
		}
	}
	global.life -=1;
	show_debug_message("Ouch lost a life!");
	instance_destroy(self);
}