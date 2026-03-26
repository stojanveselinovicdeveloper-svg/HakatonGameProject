event_inherited();

cards_created = false;
card_list = [];
patient_list = [];

if (variable_global_exists("active_patients")){
	patient_list = global.active_patients;
}