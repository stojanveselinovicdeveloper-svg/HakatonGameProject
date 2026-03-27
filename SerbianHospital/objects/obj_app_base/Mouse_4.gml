if ((variable_global_exists("ui_blocking") && !global.ui_blocking && !disabled) || ui_prevent_blocking){
	if (app != noone && app.is_open){
		close_app(app);
	}
	else if (app != noone) {
		open_app(app);
	}
}

function open_app(_app){
	with (_app)
	{
		if (global.open_apps_count < other.max_tabs){
			global.open_apps_count +=1;
		}
		
		close_existing_app(other.max_tabs);
		target_scale = 1;
		other.position = get_position(global.open_apps_count, other.max_tabs);
		save_app(id, other.position);
		var block_app_ui = (other.max_tabs == 2 && other.position != 1440) || other.max_tabs == 1;
		global.ui_blocking = block_app_ui;
		window_set_cursor(cr_default);
			
	}
}

function close_app(_app){
	with (_app)
	{
		target_scale = 0;
		if (global.open_apps_count > 0){
			global.open_apps_count -= 1;
			remove_app(id);
		}
	}
}

function get_position(openApps, _max_tabs){
	if (_max_tabs == 1) return 580;
	
	switch(openApps){
		case 1:
			return 1440;
		case 2:
			return 480;
		default:
			return 1440;
	}
}

function remove_app(app){
	if (variable_global_exists("open_apps")){
		var new_app_arr = [];
		for(var i = 0 ;i < array_length(global.open_apps); i++){
			if (global.open_apps[i].app_id == app){
				continue;
			}
			array_push(new_app_arr, global.open_apps[i]);
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

function app_obj(app,position) constructor{
	app_id = app;
	app_position = position;
}

function close_existing_app(_max_tabs) {
	var open_apps_len = array_length(global.open_apps);
	for(var i = 0 ;i < open_apps_len; i++){
		if (global.open_apps[i].app_position == 1440){
			var existing_app = global.open_apps[i];
			existing_app.app_id.is_open = false;
			remove_app(existing_app.app_id);
			break;
		}
	}
}