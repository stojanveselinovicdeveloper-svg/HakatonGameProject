updateAppDisplay();

if (current_scale >= 0.99){
	is_open = true;
}
else if (current_scale <= 0.01) {
	is_open = false;
}


if (instance_exists(close_btn)){
	close_btn.target_scale = target_scale;	
}

function updateAppDisplay() {
		
	if (target_scale == 0){
		scale_delay = 0.25;
	}
	else {
		scale_delay = 0.15;
	}
	
	current_scale = lerp(current_scale, target_scale, scale_delay);
	image_xscale = current_scale;
	image_yscale = current_scale;
	x = position;
	y = 540;
}



