if ((variable_global_exists("ui_blocking") && !global.ui_blocking && !disabled) || ui_prevent_blocking){
	if (app != noone && app.is_open){
		with (app)
		{
		    target_scale = 0;
			if (global.open_apps_count > 0){
				global.open_apps_count -= 1;
				remove_app(id);
			}
		}
	}
	else if (app != noone) {
		with (app)
		{
			if (global.open_apps_count < 2){
				global.open_apps_count +=1;
			}
			close_existing_app();
			window_set_cursor(cr_default);
		    target_scale = 1;
			position = get_position(global.open_apps_count);
			save_app(id,position);
			
			if (position == 480){
				global.ui_blocking = true;
			}
			
		}
	}
}

function get_position(openApps){
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

function close_existing_app() {
	if (variable_global_exists("open_apps_count") && global.open_apps_count == 2){
		for(var i = 0 ;i < array_length(global.open_apps); i++){
			if (global.open_apps[i].app_position == 1440){
				var existing_app = global.open_apps[i];
				existing_app.app_id.is_open = false;
				remove_app(existing_app.app_id);
				break;
			}
		}
	}
}