function scrpt_buttonTabDraw( button_rel_x, button_rel_y, button_rel_w,button_rel_h, button_hover, text, button_clicked){

	
	var scale = current_scale;

	var TAB_W = 960 * scale;
	var TAB_H = 1080 * scale;

	var draw_x = x - TAB_W / 2;
	var draw_y = y - TAB_H / 2;

	// override old window size
	var win_w = TAB_W;
	var win_h = TAB_H;
	

	var bx = draw_x + win_w * button_rel_x;
	var by = draw_y + win_h * button_rel_y;
	var bw = win_w * button_rel_w;
	var bh = win_h * button_rel_h;
	
	// draw button
	
	draw_set_color(button_hover && !button_clicked ? c_gray : c_dkgray);
	draw_rectangle(bx, by, bx + bw, by + bh, false);

	// text
	draw_set_font(fnt_press_start_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);

	draw_text(bx + bw/2, by + bh/2, text);

	// reset
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

}