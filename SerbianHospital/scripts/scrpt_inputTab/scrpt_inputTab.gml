function scrpt_inputTab( input_rel_x,input_rel_y,  input_rel_w, input_rel_h, input_active, input_text, hasANumber){
	var mx = mouse_x;
	var my = mouse_y;
	

	// calculate position
	var ix = x + win_w * input_rel_x;
	var iy = y + win_h * input_rel_y;
	var iw = win_w * input_rel_w;
	var ih = win_h * input_rel_h;

	// --- CLICK TO FOCUS ---
	if (mouse_check_button_pressed(mb_left)) {
	    if (point_in_rectangle(mx, my, ix, iy, ix + iw, iy + ih)) {
	        input_active = true;
	    } else {
	        input_active = false;
	    }
	}

	// --- KEYBOARD INPUT (only if active) ---
	if (input_active) {
	    // numbers (top row)
	    for (var i = ord("0"); i <= ord("6"); i++) {
	        if (keyboard_check_pressed(i) && !hasANumber) {
	            input_text += chr(i);
				hasANumber = true;
	        }
	    }
	    // backspace
	    if (keyboard_check_pressed(vk_backspace)) {
	        if (string_length(input_text) > 0) {
	            input_text = string_delete(input_text, string_length(input_text), 1);
				hasANumber = false;
	        }
	    }
	}
	return [input_active,input_text, hasANumber];
}