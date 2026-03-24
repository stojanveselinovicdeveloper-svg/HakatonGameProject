updateBtnDisplay();


switch(current_scale){
	case 0:
		is_visible = false;
		break;
	case 1:
		is_visible = true;
		break;
}


function updateBtnDisplay() {
	current_scale = lerp(current_scale, target_scale, 0.15);
	image_xscale = current_scale;
	image_yscale = current_scale;
	if (instance_exists(popup)){
		x = popup.x + (sprite_get_width(popup.sprite_index) * popup.image_xscale) / 2 - padding_x;
		y = popup.y - (sprite_get_height(popup.sprite_index) * popup.image_yscale) / 2 + padding_y;
	}
}
