global.ui_blocking = false;

remove_app(popup);
popup.target_scale = 0;
target_scale = 0;
if (instance_exists(popup.icon)){
	popup.icon.click_delay_timer = 2;
}
popup.alarm[0] = game_get_speed(gamespeed_fps) * 1;

function remove_app(app){
	if (variable_global_exists("open_apps")){
		
		var open_apps = global.open_apps;
		var open_apps_len = array_length(open_apps);
		var new_app_arr = [];
		
		for(var i = 0 ;i < open_apps_len; i++){
			
			if (open_apps[i].app_id == app){
				
				continue;
			}
			
			array_push(new_app_arr, open_apps[i]);
		}
		global.open_apps = new_app_arr;
	}
}