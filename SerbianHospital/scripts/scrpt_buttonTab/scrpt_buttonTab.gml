function scrpt_buttonTab(rel_x, rel_y, rel_w, rel_h, button_hover, text, button_clicked){
	var mx = mouse_x;
	var my = mouse_y;

	// calculate actual position
	var bx = x + win_w * rel_x;
	var by = y + win_h * rel_y;
	var bw = win_w * rel_w;
	var bh = win_h * rel_h;

	// hover detection
	button_hover = point_in_rectangle(mx, my, bx, by, bx + bw, by + bh);
	

	// click
	if (button_hover && mouse_check_button_pressed(mb_left) && !button_clicked) {
	  show_debug_message("Button clicked!");
	  button_clicked = true;
	  text = "Car sent";  
	 
}
	return [text, button_hover, button_clicked];
}