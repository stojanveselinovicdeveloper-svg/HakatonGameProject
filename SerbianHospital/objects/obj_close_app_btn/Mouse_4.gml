global.ui_blocking = false;

remove_app(popup);
popup.target_scale = 0;
target_scale = 0;
if (instance_exists(popup.icon)){
	popup.icon.click_timer_delay = 1;
	//refresh_right_side_ui();
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