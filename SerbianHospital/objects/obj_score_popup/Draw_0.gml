draw_set_font(fnt_press_start_score);
draw_set_colour(c_white);
draw_text(0,0, "Score: " + string(global.score));
draw_text(0,31, "Lives left: " + string(global.life));

//reset
draw_set_font(fnt_press_start_menu);