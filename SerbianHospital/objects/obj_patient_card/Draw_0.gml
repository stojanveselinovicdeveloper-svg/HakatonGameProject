var left   = x - card_width * 0.5;
var top    = y - card_height * 0.5;
var right  = x + card_width * 0.5;
var bottom = y + card_height * 0.5;

draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_top);

var inner_padding = 12;
var line_gap = 24;

var text_x = left + inner_padding + 30;
var text_y = top + inner_padding + 10;

draw_set_font(fnt_patient_card);
draw_text(text_x, text_y, patient_name);
draw_text(text_x, text_y + line_gap, patient_age);
draw_text(text_x, text_y + line_gap * 2, patient_status);