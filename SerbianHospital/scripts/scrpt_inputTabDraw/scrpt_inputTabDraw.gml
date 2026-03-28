function scrpt_inputTabDraw(input_rel_x,input_rel_y,  input_rel_w, input_rel_h, input_active, input_text, input_type ){
	
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
	
	//LABEL TEXT
	var label = input_type;
	
	// DRAW LABEL (above box)
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);

	draw_text(ix, iy - 4, label);

	// background
	draw_set_color(input_active ? c_white : c_gray);
	draw_rectangle(ix, iy, ix + iw, iy + ih, false);

	// text
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	draw_set_font(fnt_press_start_name);


	draw_text(ix + 5, iy + ih/2, input_text);
	
	
	// cursor (simple but shitty blinking)
	if (input_active && (current_time div 500 mod 2 == 0)) {
	    var tw = string_width(input_text);
	    draw_line(ix + 3 + tw, iy + 5, ix + tw, iy + ih - 5);
	}
	draw_set_font(fnt_press_start_menu)
}