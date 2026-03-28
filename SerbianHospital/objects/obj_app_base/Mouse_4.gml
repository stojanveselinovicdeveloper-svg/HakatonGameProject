event_inherited();
window_set_cursor(cr_handpoint);

if ((variable_global_exists("ui_blocking") && !global.ui_blocking && !disabled && !delayed) || ui_prevent_blocking){
	if (instance_exists(app) && app.is_open){
		close_app();
		click_delay_timer = 1;
	}
	else if (!instance_exists(app)) {
		open_app();
		click_delay_timer = 1;
	}
}

function open_app() {
	var open_apps_len = array_length(global.open_apps);
	
	if (open_apps_len >= max_tabs){
		close_existing_app();
		open_apps_len = array_length(global.open_apps);
	}
	
	if (open_apps_len <= max_tabs){
		position = get_position(open_apps_len, max_tabs);
		app = instance_create_layer(position,new_tab_y,"Instances",app_type);
		app.icon = id;
		
		if (max_tabs == 1){
		}
		
		save_app(app, position);
		//refresh_right_side_ui();
	
		var block_app_ui = (max_tabs == 2 && position != 1440) || max_tabs == 1;
		global.ui_blocking = block_app_ui;
		window_set_cursor(cr_default);
	
		with (app)
		{
			target_scale = 1;
			position = other.position;
			if (other.max_tabs == 1){
				sprite_index = spr_app_big_bg;
				is_big = true;
			}
		}
	}
}

function close_app(){
	
	var open_apps_len = array_length(global.open_apps);
	if (instance_exists(app) && open_apps_len > 0) {
		remove_app(app);
		//refresh_right_side_ui();

		if (app.position == 480){
			global.ui_blocking = false;
		}

		with (app)
		{
			is_open = false;
			target_scale = 0;
			alarm[0] = game_get_speed(gamespeed_fps) * 1;
		}
	}
	app = noone;
}

function get_position(open_apps_len, _max_tabs){
	if (_max_tabs == 1) return room_width * 0.5;
	
	switch(open_apps_len){
		case 1:
			return 480;
		case 2:
			return 480;
		default:
			return 1440;
	}
}

function remove_app(app){
	if (variable_global_exists("open_apps")){
		
		var open_apps = global.open_apps;
		var open_apps_len = array_length(open_apps);
		var new_app_arr = [];
		
		for(var i = 0 ; i < open_apps_len; i++){
			
			if (open_apps[i].app_id == app){
				
				continue;
			}
			
			array_push(new_app_arr, open_apps[i]);
		}
		global.open_apps = new_app_arr;
	}
}

function save_app(app,position){
	if(variable_global_exists("open_apps")){
		var new_app = new app_obj(app,position); 
		array_push(global.open_apps,new_app);
	}
}

function app_obj(app, position) constructor{
	app_id = app;
	app_position = position;
}

function close_existing_app() {
	
	var open_apps = global.open_apps;
	var open_apps_len = array_length(global.open_apps);
	
	for(var i = 0 ;i < open_apps_len; i++){
	
		var existing_app = open_apps[i];
		var inst = existing_app.app_id;
		
		if (!instance_exists(inst)) {
			remove_app(inst);
			continue;
		}
			
		with(inst){
			target_scale = 0;
			if (instance_exists(icon)) {
				icon.click_delay_timer = 2;
			}
			instance_destroy();
		};
		remove_app(inst);
		//refresh_right_side_ui();
		break;
	}
}

function right_side_tab_exists() {
    if (variable_global_exists("open_apps")) {
        var open_apps = global.open_apps;
        var open_apps_len = array_length(open_apps);

        for (var i = 0; i < open_apps_len; i++) {
            if (variable_struct_exists(open_apps[i], "app_position")
            && open_apps[i].app_position == 1440) {
                return true;
            }
        }
    }

    return false;
}

function refresh_right_side_ui() {
    var should_disable = right_side_tab_exists();

    var count = instance_number(obj_app_base);

    for (var i = 0; i < count; i++) {
        var inst = instance_find(obj_app_base, i);

        if (inst != noone) {
            var has_side_flag = variable_instance_exists(inst, "is_right_screen_side");
            var side_flag = has_side_flag ? inst.is_right_screen_side : false;


            if (has_side_flag && side_flag) {
                inst.disabled = should_disable;
            }
        }
    }
}