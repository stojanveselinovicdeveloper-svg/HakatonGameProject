event_inherited();

cards_created = false;
card_list = [];
patient_list = [];

//Scroll related
scroll_y = 0;
target_scroll_y = 0;
scroll_step = 48;

content_height = 1160;
max_scroll = 360;

content_padding_top = 70;
content_padding_bottom = 20;
card_spacing = 16;
card_height = 180;

if (variable_global_exists("patient_calls")){
	patient_list = global.patient_calls;
}