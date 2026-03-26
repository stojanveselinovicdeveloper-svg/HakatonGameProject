if ((variable_global_exists("ui_blocking") && !global.ui_blocking)|| ui_prevent_blocking){
	hovered = true;
	target_alpha = 0.6;
	window_set_cursor(cr_handpoint);
}
