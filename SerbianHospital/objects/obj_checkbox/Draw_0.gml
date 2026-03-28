draw_self();

var box_size = 64;
var x_size = 32;
var y_size = 32;
var gap = 25;
var label = "One tab only";


var box_left   = x - box_size * 0.5;
var box_right  = x + box_size * 0.5;
var box_top    = y - box_size * 0.5;
var box_bottom = y + box_size * 0.5;


draw_set_color(c_black);
draw_rectangle(box_left, box_top, box_right, box_bottom, true);


if (checked) {
    var left_x   = x - x_size * 0.5;
    var right_x  = x + x_size * 0.5;
    var top_y    = y - y_size * 0.5;
    var bottom_y = y + y_size * 0.5;

    draw_set_color(c_green);
    draw_line_width(left_x, top_y, right_x, bottom_y, 4);
    draw_line_width(right_x, top_y, left_x, bottom_y, 4);
}


draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(box_right + gap, y, label);