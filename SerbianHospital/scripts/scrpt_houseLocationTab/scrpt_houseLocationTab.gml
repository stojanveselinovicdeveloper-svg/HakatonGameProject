function scrpt_houseLocationTab(h_rel_x, h_rel_y, carN){
	var bx = x + win_w * h_rel_x;
	var by = y + win_h * h_rel_y;
	
	if(carN == 1){
		with (obj_car1) {
			x = bx;
			y = by;
		}
	}
	else {
		with (obj_car2) {
			x = bx;
			y = by;
		}
	}
}