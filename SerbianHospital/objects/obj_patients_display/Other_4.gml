function createCloseBtn(){
	close_btn = instance_create_layer(x, y, "Instances", obj_close_app_btn);

	close_btn.popup = id;

	close_btn.x = x + (sprite_get_width(sprite_index) * image_xscale) / 2 - 16;
	close_btn.y = y - (sprite_get_height(sprite_index) * image_yscale) / 2 + 16;
	close_btn.x_offset = close_btn.x - x;
	close_btn.y_offset = close_btn.y - y;
}
createCloseBtn();
