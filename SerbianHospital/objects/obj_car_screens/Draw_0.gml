// Inherit the parent event
event_inherited();
if (!is_open){
	exit;
} 
visible = true;
var scale = current_scale;

var TAB_W = 960 * scale;
var TAB_H = 1080 * scale;

var draw_x = x - TAB_W / 2;
var draw_y = y - TAB_H / 2;

// override old window size
var win_w = TAB_W;
var win_h = TAB_H;

scrpt_inputTabDraw(i1_rel_x, i1_rel_y, i1_rel_w, i1_rel_h, i1_active, i1_text, "House No.");
scrpt_inputTabDraw(n1_rel_x, n1_rel_y, n1_rel_w, n1_rel_h, n1_active, n1_text, "Name");



scrpt_inputTabDraw(i11_rel_x, i11_rel_y, i11_rel_w, i11_rel_h, i11_active, i11_text,  "House No.");
scrpt_inputTabDraw(n11_rel_x, n11_rel_y, n11_rel_w, n11_rel_h, n11_active, n11_text,  "Name");

scrpt_inputTabDraw(i2_rel_x, i2_rel_y, i2_rel_w, i2_rel_h, i2_active, i2_text,  "House No.");
scrpt_inputTabDraw(n2_rel_x, n2_rel_y, n2_rel_w, n2_rel_h, n2_active, n2_text,  "Name");

scrpt_inputTabDraw(i22_rel_x, i22_rel_y, i22_rel_w, i22_rel_h, i22_active, i22_text,  "House No.");
scrpt_inputTabDraw(n22_rel_x, n22_rel_y, n22_rel_w, n22_rel_h, n22_active, n22_text,  "Name");

scrpt_buttonTabDraw(b1_rel_x, b1_rel_y, b1_rel_w, b1_rel_h, b1_hover, b1_text, b1_clicked);

scrpt_buttonTabDraw(b2_rel_x, b2_rel_y, b2_rel_w, b2_rel_h, b2_hover, b2_text, b2_clicked);

