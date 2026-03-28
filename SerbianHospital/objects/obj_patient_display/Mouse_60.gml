if (!cards_created) exit;

var parent_width  = sprite_get_width(sprite_index) * current_scale;
var parent_height = sprite_get_height(sprite_index) * current_scale;

var left   = x - parent_width * 0.5;
var right  = x + parent_width * 0.5;
var top    = y - parent_height * 0.5 + content_padding_top;
var bottom = y + parent_height * 0.5 - content_padding_bottom;

if (point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom))
{
	target_scroll_y = clamp(target_scroll_y - scroll_step, 0, max_scroll);
}