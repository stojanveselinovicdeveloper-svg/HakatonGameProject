event_inherited();

cards_created = false;
card_list = [];

if (variable_global_exists("active_patients")){
	card_list = global.active_patients;
}