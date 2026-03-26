if (instance_exists(parent_popup))
{
    x = parent_popup.x + base_x_offset;
    y = parent_popup.y + base_y_offset - parent_popup.scroll_y;

    var parent_width  = sprite_get_width(parent_popup.sprite_index) * parent_popup.current_scale;
    var parent_height = sprite_get_height(parent_popup.sprite_index) * parent_popup.current_scale;

    var content_left   = parent_popup.x - parent_width * 0.5 + 24;
    var content_top    = parent_popup.y - parent_height * 0.5 + parent_popup.content_padding_top;
    var content_right  = parent_popup.x + parent_width * 0.5 - 24;
    var content_bottom = parent_popup.y + parent_height * 0.5 - parent_popup.content_padding_bottom;

    var card_left   = x - card_width * 0.5;
    var card_top    = y - card_height * 0.5;
    var card_right  = x + card_width * 0.5;
    var card_bottom = y + card_height * 0.5;

    visible =
        (card_right >= content_left) &&
        (card_left <= content_right) &&
        (card_bottom >= content_top) &&
        (card_top <= content_bottom);
	depth = parent_popup.depth - 100;
}
else
{
    instance_destroy();
}

var parent_height = sprite_get_height(parent_popup.sprite_index) * parent_popup.current_scale; // NEW

var clip_top = parent_popup.y - parent_height * 0.5 + parent_popup.content_padding_top;        // NEW
var clip_bottom = parent_popup.y + parent_height * 0.5 - parent_popup.content_padding_bottom;  // NEW

var card_top = y - card_height * 0.5;
var card_bottom = y + card_height * 0.5;

visible = (card_bottom >= clip_top) && (card_top <= clip_bottom); 