function scrpt_buttonTab(rel_x, rel_y, rel_w, rel_h, button_hover, text, button_clicked){
	var mx = mouse_x;
	var my = mouse_y;
	var scale = current_scale;

	var TAB_W = 960 * scale;
	var TAB_H = 1080 * scale;

	var draw_x = x - TAB_W / 2;
	var draw_y = y - TAB_H / 2;

	// override old window size
	var win_w = TAB_W;
	var win_h = TAB_H;

	// calculate actual position
	var bx = draw_x + win_w * rel_x;
	var by = draw_y + win_h * rel_y;
	var bw = win_w * rel_w;
	var bh = win_h * rel_h;

	// hover detection
	button_hover = point_in_rectangle(mx, my, bx, by, bx + bw, by + bh);
	

	// click
	if (button_hover && mouse_check_button_pressed(mb_left) && !button_clicked) {
	  show_debug_message("Button clicked!");
	  button_clicked = true;
	  audio_play_sound(snd_click, 10, false);
	  text = "Car sent";  
	 
}
	return [text, button_hover, button_clicked];
}