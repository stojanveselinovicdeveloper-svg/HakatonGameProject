createCloseBtn();


function createCloseBtn(){
	close_btn = instance_create_layer(x, y, "Instances", obj_close_app_btn);

	close_btn.popup = id;
	
	if (sprite_index == -1) {
		sprite_index = spr_app_bg;
	}

	var spr = sprite_index;
	var parentYImage = obj_app_display.image_yscale;
	var parentXImage = obj_app_display.image_xscale;


	if (spr != -1) {
	    close_btn.y = y - (sprite_get_height(spr) * parentYImage) / 2 + 16;
	    close_btn.x = x + (sprite_get_width(spr) * parentXImage) / 2 - 16;
	}
	
	close_btn.x_offset = close_btn.x - x;
	close_btn.y_offset = close_btn.y - y;
}

