function init_patient(_name,_surname,_age, _status, _priority,  _house){
	patient_name = _name;
	patient_surname = _surname;
	patient_age = _age;
	patient_status = _status;
	patient_house = _house;
	patient_priority = _priority;
	patient_init = true;
	inHouse = true;
	
}

function remove_from_house() {

    with (obj_kuce) {
        for (var k = 0; k < 6; k++) {
            for (var i = 0; i < 5; i++) {

                if (residents[k][i] == other.id) {
                    residents[k][i] = noone;
                    return;
                }
            }
        }
		
    }
}
stable = false;
delivered = false;
countdownInit = false;
inHouse = false;
released = false;