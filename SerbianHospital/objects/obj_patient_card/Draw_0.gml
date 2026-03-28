/// Draw Event

var left   = x - card_width * 0.5;
var top    = y - card_height * 0.5;
var right  = x + card_width * 0.5;
var bottom = y + card_height * 0.5;

var pad = 12;
var badge_h = 22;
var line_gap = 18;

// background
draw_set_color(make_color_rgb(235, 235, 235));
draw_roundrect(left, top, right, bottom, false);

// border
draw_set_color(make_color_rgb(60, 60, 60));
draw_roundrect(left, top, right, bottom, true);

// inner separator under header
draw_set_color(make_color_rgb(180, 180, 180));
draw_line(left + pad, top + 34, right - pad, top + 34);

// name + surname
draw_set_font(fnt_patient_card_title);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

var full_name = patient_name + " " + patient_surname;
draw_text(left + pad, top + 8, full_name);

// age on top right
draw_set_font(fnt_patient_small_text);
draw_set_halign(fa_right);
draw_text(right - pad, top + 10, "Age: " + string(patient_age));

// status badge
var status_x1 = left + pad;
var status_y1 = top + 42;
var status_x2 = status_x1 + 90;
var status_y2 = status_y1 + badge_h;

var status_col = make_color_rgb(120, 120, 120);

switch (patient_status)
{
    case "Critical":
        status_col = make_color_rgb(200, 70, 70);
        break;
    case "Urgent":
        status_col = make_color_rgb(220, 140, 60);
        break;
    case "Observation":
        status_col = make_color_rgb(80, 140, 210);
        break;
    case "Stable":
        status_col = make_color_rgb(90, 170, 100);
        break;
}

draw_set_color(status_col);
draw_roundrect(status_x1, status_y1, status_x2, status_y2, false);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((status_x1 + status_x2) * 0.5, (status_y1 + status_y2) * 0.5, patient_status);

// priority badge
var prio_w = 70;
var prio_x2 = right - pad;
var prio_x1 = prio_x2 - prio_w;
var prio_y1 = status_y1;
var prio_y2 = prio_y1 + badge_h;

draw_set_color(make_color_rgb(70, 70, 70));
draw_roundrect(prio_x1, prio_y1, prio_x2, prio_y2, false);

draw_set_color(c_white);
draw_text((prio_x1 + prio_x2) * 0.5, (prio_y1 + prio_y2) * 0.5, "P" + string(patient_priority));

// labels + content
draw_set_font(fnt_patient_small_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(make_color_rgb(40, 40, 40));

var body_x = left + pad;
var body_w = card_width - pad * 2;

draw_text(body_x, top + 74, "Address:");
draw_set_color(c_black);
draw_text_ext(body_x, top + 90, patient_address, -1, body_w);

draw_set_color(make_color_rgb(40, 40, 40));
draw_text(body_x, top + 116, "Description:");
draw_set_color(c_black);
draw_text_ext(body_x, top + 132, patient_description, 16, body_w);