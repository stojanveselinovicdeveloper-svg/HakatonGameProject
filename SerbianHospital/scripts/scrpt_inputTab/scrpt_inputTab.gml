function scrpt_inputTab( input_rel_x,input_rel_y,  input_rel_w, input_rel_h, input_active, input_text, hasANumber, input_type){
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

	// calculate position
	var ix = draw_x + win_w * input_rel_x;
	var iy = draw_y + win_h * input_rel_y;
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

	
	// --- KEYBOARD INPUT ---
	if (input_active) {

	    //INPUT (letters only, auto lowercase)

	        // A–Z input
	        for (var i = ord("0"); i <= ord("Z"); i++) {
	            if (keyboard_check_pressed(i) && string_length(input_text) < 10) {
	                input_text += string_lower(chr(i));
					hasANumber = true;
	            }
	        }

	        //space (optional, for full names and address)
	        if (keyboard_check_pressed(vk_space) && string_length(input_text) < 10) {
	           input_text += " ";
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