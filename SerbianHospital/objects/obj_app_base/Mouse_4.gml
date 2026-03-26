if ((variable_global_exists("ui_blocking") && !global.ui_blocking)|| ui_prevent_blocking){
	if (app != noone && app.is_open){
		with (app)
		{
		    target_scale = 0;
			global.open_apps -= 1;
		}
	}
	else if (app != noone) {
		with (app)
		{
			global.open_apps +=1;
			window_set_cursor(cr_default);
		    target_scale = 1;
			position = getPosition(global.open_apps);
		}
	}
}

function getPosition(openApps){
	switch(openApps){
		case 1:
			return 1440;
		case 2:
			return 480;
		default:
			return 1440;
	}
}