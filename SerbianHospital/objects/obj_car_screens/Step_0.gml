// Inherit the parent event
event_inherited();
if (!is_open){
	exit;
} 


var result;

//car 1 input 1
if !b1_clicked{
	result = scrpt_inputTab(i1_rel_x, i1_rel_y, i1_rel_w, i1_rel_h, i1_active, i1_text, i1_hasANUMBER,  "Adress");
	i1_active = result[0];
	i1_text = result[1];
	i1_hasANUMBER = result[2];
	result = scrpt_inputTab(n1_rel_x, n1_rel_y, n1_rel_w, n1_rel_h, n1_active, n1_text, n1_hasANUMBER, "Name");
	n1_active = result[0];
	n1_text = result[1];
	n1_hasANUMBER = result[2];
}


//car 1 input 2
if !b1_clicked {
	result = scrpt_inputTab(i11_rel_x, i11_rel_y, i11_rel_w, i11_rel_h, i11_active, i11_text, i11_hasANUMBER,  "Adress");
	i11_active = result[0];
	i11_text = result[1];
	i11_hasANUMBER = result[2];
	result = scrpt_inputTab(n11_rel_x, n11_rel_y, n11_rel_w, n11_rel_h, n11_active, n11_text, n11_hasANUMBER, "Name");
	n11_active = result[0];
	n11_text = result[1];
	n11_hasANUMBER = result[2];
}


//car 1 send button
result = scrpt_buttonTab(b1_rel_x, b1_rel_y, b1_rel_w, b1_rel_h, b1_hover, b1_text, b1_clicked);
b1_hover = result[1];
b1_text = result[0];
b1_clicked = result[2];

//NOTE FOR LATER: Make a script for the time calc and this, good enough like this for now
if b1_clicked && obj_car1.can_send{
	if i1_hasANUMBER && i11_hasANUMBER && n1_hasANUMBER && n11_hasANUMBER{
		obj_car1.location1 = scrpt_houseIndex(i1_text);
		obj_car1.location2 = scrpt_houseIndex(i11_text);
		obj_car1.name1 = n1_text;
		obj_car1.name2 = n11_text;
	}
	else {	if (i1_hasANUMBER && n1_hasANUMBER && !i11_hasANUMBER && !n11_hasANUMBER) || 
		(i11_hasANUMBER && n11_hasANUMBER &&  !i1_hasANUMBER && !n1_hasANUMBER) {
				obj_car1.location1 = (i1_hasANUMBER ? scrpt_houseIndex(i1_text) :scrpt_houseIndex(i11_text));
				obj_car1.name1 =  (n1_hasANUMBER ? n1_text : n11_text);
			}
	
			else {
				show_debug_message("b1 not clickity clackity");
				b1_clicked = false;
				b1_text = "Invalid input!";
	}
	}
}

//car 2 input
if !b2_clicked{
	result = scrpt_inputTab(i2_rel_x, i2_rel_y, i2_rel_w, i2_rel_h, i2_active, i2_text, i2_hasANUMBER,  "Adress");
	i2_active = result[0];
	i2_text = result[1];
	i2_hasANUMBER = result[2];
	result = scrpt_inputTab(n2_rel_x, n2_rel_y, n2_rel_w, n2_rel_h, n2_active, n2_text, n2_hasANUMBER, "Name");
	n2_active = result[0];
	n2_text = result[1];
	n2_hasANUMBER = result[2];
}


//car 2 input 2
if !b2_clicked {
	result = scrpt_inputTab(i22_rel_x, i22_rel_y, i22_rel_w, i22_rel_h, i22_active, i22_text, i22_hasANUMBER,  "Adress");
	i22_active = result[0];
	i22_text = result[1];
	i22_hasANUMBER = result[2];
	result = scrpt_inputTab(n22_rel_x, n22_rel_y, n22_rel_w, n22_rel_h, n22_active, n22_text, n22_hasANUMBER, "Name");
	n22_active = result[0];
	n22_text = result[1];
	n22_hasANUMBER = result[2];
}


//car 2
result = scrpt_buttonTab(b2_rel_x, b2_rel_y, b2_rel_w, b2_rel_h, b2_hover, b2_text, b2_clicked);
b2_hover = result[1];
b2_text = result[0];
b2_clicked = result[2];

if b2_clicked && obj_car2.can_send{
	if i2_hasANUMBER && i22_hasANUMBER && n22_hasANUMBER && n22_hasANUMBER{
		obj_car2.location1 = scrpt_houseIndex(i2_text);
		obj_car2.location2 =  scrpt_houseIndex(i22_text);
		obj_car2.name1 = n1_text;
		obj_car2.name2 = n11_text;
	}
	else {	if ((i2_hasANUMBER && n2_hasANUMBER && !i22_hasANUMBER && !n22_hasANUMBER) || 
		(i22_hasANUMBER && n22_hasANUMBER &&  !i2_hasANUMBER && !n2_hasANUMBER)) {
				obj_car2.location1 = (i2_hasANUMBER ?  scrpt_houseIndex(i2_text) :scrpt_houseIndex(i22_text));
				obj_car2.name1 =  (n1_hasANUMBER ? n1_text : n11_text);
			}
	
			else {
				show_debug_message("b2 not clickity clackity");
				b2_clicked = false;
				b2_text = "Invalid input!";
		}
	}
}

