//patient pick up slot 1 
var kuca = location1-1;
var pickedup  = false;
for(var i = 0; i<5; i++){
	if(obj_kuce.residents[kuca][i] != noone && !pickedup){
		with(obj_kuce){
			//removing patient
			var name = obj_kuce.residents[kuca][i].name;
			var status = obj_kuce.residents[kuca][i].status;
			//adding patient
			with(obj_tab_patient_room){
				for (var j = 0; j < 6; j++) {
					if beds[j] == noone {
						show_debug_message("Patient picked up");
						beds[j] = new Patient(name, status) ;
						pickedup = true;
						obj_kuce.residents[kuca][i] = noone;
						break;
					}
			}
			//no room in room
			if(obj_kuce.residents[kuca][i]  != noone){
				//Tu ce biti neki notification da se ne moze smesititi pacijent i - bodovi
				show_debug_message("No space for patients");
				obj_kuce.residents[kuca][i] = noone;
			}
		}
		}
	}
}

	//picking up the 2nd person
if location2 != 0{
	kuca = location2-1;
	pickedup  = false;
	for(var i = 0; i<5; i++){
		if(obj_kuce.residents[kuca][i] != noone && !pickedup){
			with(obj_kuce){
				//removing patient
				var name = obj_kuce.residents[kuca][i].name;
				var status = obj_kuce.residents[kuca][i].status;
				obj_kuce.residents[kuca][i] = noone;
				//adding patient
				with(obj_tab_patient_room){
					for (var j = 0; j < 6; j++) {
						if beds[j] == noone {
							show_debug_message("Patient picked up");
							beds[j] = new Patient(name, status) ;
							pickedup = true;
							break;
						}
					}
				}
			}
		}
	}
}

location1 = 0;
location2 = 0;
location_curr = 0;
can_send = true;
