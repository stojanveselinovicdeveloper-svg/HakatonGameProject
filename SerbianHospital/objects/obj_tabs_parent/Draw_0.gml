if (!is_open) exit;

draw_sprite_stretched(tab_sprite, 0, x, y, win_w, win_h);

draw_set_color(c_red);
draw_rectangle( x + win_w - x_edge , y + win_h - y_edge, x +win_w + resize_margin - x_edge, y + win_h + resize_margin - y_edge, false);

draw_set_color(c_green);
draw_rectangle( x + win_w - 50 , y, x + win_w- x_edge, y  + 50, false);