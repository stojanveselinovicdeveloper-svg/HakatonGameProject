if(!score_loaded){
	draw_self();
	exit;
}
draw_self();
var h = window_get_height();
var w = window_get_width() *0.5;

draw_set_font(fnt_press_start_BIG);
draw_set_halign(fa_center);
draw_set_colour(c_white);

draw_text(w,80,"Score: " + string(global.score) + "\nMistakes:" + string(abs(global.life - 3)));


draw_set_font(fnt_press_start_menu);
draw_set_halign(fa_left);
draw_set_colour(c_black);