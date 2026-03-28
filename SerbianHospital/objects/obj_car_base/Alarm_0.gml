//patient pick up slot 1 
var kuca = location1-1;
var pickedup  = false; 

for(var i = 0; i<5; i++){
	if(kuca < 0){
		break;
	}
	var p = obj_kuce.residents[kuca][i];

	//CLEAN INVALID
	if (p != noone && !instance_exists(p)) {
	    obj_kuce.residents[kuca][i] = noone;
	    continue;
	}
	//check if house has sb in that slot
	if(obj_kuce.residents[kuca][i] != noone && !pickedup){
		//check if its the right person
		if (string_lower(obj_kuce.residents[kuca][i].patient_name) == name1){
		with(obj_kuce){
				//removing patient
				if(instance_exists(obj_kuce.residents[kuca][i])){
					var curr = obj_kuce.residents[kuca][i];
					var name = obj_kuce.residents[kuca][i].patient_name;
					var status = obj_kuce.residents[kuca][i].patient_status;
					//adding patient
						for (var j = 0; j < 6; j++) {
							if global.beds[j] == noone {
								scrpt_removePatientCall(curr);
								global.beds[j] = curr;
								pickedup = true;
								obj_kuce.residents[kuca][i] = noone;
								break;
							}
					//no room in room
						if(obj_kuce.residents[kuca][i]  != noone){
							//Tu ce biti neki notification da se ne moze smesititi pacijent i - bodovi
							show_debug_message("No space for patients - deducting points");
							global.life -= 1;
							//privremeno samo izbacujemo pacijenta na ulicu
							scrpt_removePatientCall(curr);
							obj_kuce.residents[kuca][i] = noone;
						}
					}
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
	if(kuca < 0){
	break;}
	var p = obj_kuce.residents[kuca][i];

	//CLEAN INVALID
	if (p != noone && !instance_exists(p)) {
	    obj_kuce.residents[kuca][i] = noone;
	    continue;
	}
	if(obj_kuce.residents[kuca][i] != noone && !pickedup){
		with(obj_kuce){
			//removing patient
			if(instance_exists(obj_kuce.residents[kuca][i])){
				var curr = obj_kuce.residents[kuca][i];
				var name = obj_kuce.residents[kuca][i].patient_name;
				var status = obj_kuce.residents[kuca][i].patient_status;
				//adding patient
					for (var j = 0; j < 6; j++) {
						if global.beds[j] == noone {
							scrpt_removePatientCall(curr);
							global.beds[j] = new Patient(name, status) ;
							pickedup = true;
							obj_kuce.residents[kuca][i] = noone;
							break;
						}
				//no room in room
					if(obj_kuce.residents[kuca][i]  != noone){
						//Tu ce biti neki notification da se ne moze smesititi pacijent i - bodovi
						show_debug_message("No space for patient 2  deducting points");
						global.life -= 1;
						//privremeno samo izbacujemo pacijenta na ulicu
						scrpt_removePatientCall(curr);
						obj_kuce.residents[kuca][i] = noone;
					}
				}
			}
		}
	}
}}

location1 = 0;
location2 = 0;
name1 = 0;
name2 = 0;
location_curr = 0;
can_send = true;

