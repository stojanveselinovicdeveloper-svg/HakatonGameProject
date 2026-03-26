if (popup.position == 480){
	global.ui_blocking = false;
}

if (global.open_apps_count > 0){
	global.open_apps_count -= 1;
}
remove_app(id);
popup.target_scale = 0;
target_scale = 0;


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