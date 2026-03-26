event_inherited();

if (!disabled){
	zooming = true;

	var scale_x = 1920 / sprite_get_width(sprite_index);
	var scale_y = 1080 / sprite_get_height(sprite_index);
	target_scale = max(scale_x, scale_y);
}