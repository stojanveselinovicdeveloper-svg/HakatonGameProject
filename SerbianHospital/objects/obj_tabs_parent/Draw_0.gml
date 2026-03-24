draw_sprite_stretched(tab_sprite, 0, x, y, win_w, win_h);

draw_set_color(c_red);
draw_rectangle( x + win_w - x_edge , y + win_h - y_edge, x +win_w + resize_margin - x_edge, y + win_h + resize_margin - y_edge, false);