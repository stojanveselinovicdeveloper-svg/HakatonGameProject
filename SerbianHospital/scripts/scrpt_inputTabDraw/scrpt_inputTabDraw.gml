function scrpt_inputTabDraw(input_rel_x,input_rel_y,  input_rel_w, input_rel_h, input_active, input_text ){
	// calculate position
	var ix = x + win_w * input_rel_x;
	var iy = y + win_h * input_rel_y;
	var iw = win_w * input_rel_w;
	var ih = win_h * input_rel_h;

	// background
	draw_set_color(input_active ? c_white : c_gray);
	draw_rectangle(ix, iy, ix + iw, iy + ih, false);

	// text
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	draw_text(ix + 5, iy + ih/2, input_text);

	// cursor (simple blinking)
	if (input_active && (current_time div 500 mod 2 == 0)) {
	    var tw = string_width(input_text);
	    draw_line(ix + 5 + tw, iy + 5, ix + 5 + tw, iy + ih - 5);
	}
}