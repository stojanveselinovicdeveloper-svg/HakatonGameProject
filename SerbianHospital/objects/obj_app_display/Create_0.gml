is_open = false;
current_scale = 0;
target_scale = 0;
focused = false;
close_btn = noone;
depth = -100;
scroll_y = 0;
scroll_speed = 32;
content_height = 0;
content_padding_top = 40;
content_padding_bottom = 24;
scale_delay = 0.15;
position = 1440;
icon = noone;
is_big = false;

createCloseBtn();


function createCloseBtn(){
	close_btn = instance_create_layer(x, y, "Instances", obj_close_app_btn);

	close_btn.popup = id
	
	if (is_big){
		close_btn.sprite_index = spr_close_app_big_button;
	}
	
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