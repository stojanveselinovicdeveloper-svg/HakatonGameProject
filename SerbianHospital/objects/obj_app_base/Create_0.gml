event_inherited();
app_type = noone;
app = noone;
max_tabs = 2;
new_tab_y = 540;
position = 1440;
click_delay_timer = -1;
delayed = false;
is_right_screen_side = x >= 580;

if (variable_global_exists("max_tabs")){
	max_tabs = global.max_tabs;
}