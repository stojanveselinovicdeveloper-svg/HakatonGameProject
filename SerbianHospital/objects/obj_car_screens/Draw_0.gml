// Inherit the parent event
event_inherited();
if (!is_open){
	exit;
} 

scrpt_inputTabDraw(i1_rel_x, i1_rel_y, i1_rel_w, i1_rel_h, i1_active, i1_text);

scrpt_inputTabDraw(i11_rel_x, i11_rel_y, i11_rel_w, i11_rel_h, i11_active, i11_text);

scrpt_inputTabDraw(i2_rel_x, i2_rel_y, i2_rel_w, i2_rel_h, i2_active, i2_text);

scrpt_inputTabDraw(i22_rel_x, i22_rel_y, i22_rel_w, i22_rel_h, i22_active, i22_text);

scrpt_buttonTabDraw(b1_rel_x, b1_rel_y, b1_rel_w, b1_rel_h, b1_hover, b1_text, b1_clicked);

scrpt_buttonTabDraw(b2_rel_x, b2_rel_y, b2_rel_w, b2_rel_h, b2_hover, b2_text, b2_clicked);