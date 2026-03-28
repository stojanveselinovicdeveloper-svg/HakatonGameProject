event_inherited();

delayed = click_delay_timer > 0;
if (click_delay_timer > 0 ){
	click_delay_timer--;
}

if (variable_global_exists("max_tabs") && max_tabs != global.max_tabs){
	max_tabs = global.max_tabs;
}