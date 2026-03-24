// Inherit the parent event
event_inherited();

//car 1 input
var result = scrpt_inputTab(i1_rel_x, i1_rel_y, i1_rel_w, i1_rel_h, i1_active, i1_text, i1_hasANUMBER);
i1_active = result[0];
i1_text = result[1];
i1_hasANUMBER = result[2];

//car 1 send button
result = scrpt_buttonTab(b1_rel_x, b1_rel_y, b1_rel_w, b1_rel_h, b1_hover, b1_text, b1_clicked);
b1_hover = result[1];
b1_text = result[0];
b1_clicked = result[2];

if b1_clicked {
	if i1_hasANUMBER{
		obj_car1.location = real(i1_text);
	}
	else {
		show_debug_message("b1 not clickity clackity");
		b1_clicked = false;
	}
	
}

//car 2 input
result = scrpt_inputTab(i2_rel_x, i2_rel_y, i2_rel_w, i2_rel_h, i2_active, i2_text, i2_hasANUMBER);
i2_active = result[0];
i2_text = result[1];
i2_hasANUMBER = result[2];

//car 2
result = scrpt_buttonTab(b2_rel_x, b2_rel_y, b2_rel_w, b2_rel_h, b2_hover, b2_text, b2_clicked);
b2_hover = result[1];
b2_text = result[0];
b2_clicked = result[2];

if b2_clicked {
	if i2_text != ""{
		obj_car2.location = real(i2_text);
	}
	else {
		show_debug_message("b2 not clickity clackity");
		b2_clicked = false;	
	}

		
	
}

