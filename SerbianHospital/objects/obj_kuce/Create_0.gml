function Injured(_name,_surname,_age, _status, _house) constructor{
	name = _name;
	surname = _surname;
	age = _age;
	status = _status;
	house = _house;
}

residents = array_create(6);

for(var i = 0; i < 6; i++){
	residents[i] = noone;
}

residents[2] = new Injured("Sanja", "Mirkovic", 20, "Critical", 3);