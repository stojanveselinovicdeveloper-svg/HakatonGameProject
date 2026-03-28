event_inherited();

if (!is_open) exit;

draw_set_font(fnt_press_start_menu);
// scale
var scale = current_scale;

// dimenzije taba
var TAB_W = 960 * scale;
var TAB_H = 1080 * scale;

// centar (jer scale ide iz centra)
var draw_x = x - TAB_W / 2;
var draw_y = y - TAB_H / 2;

var margin_top = 60 * scale;
var split_y = draw_y + TAB_H / 2;

// room
var room_y = draw_y + margin_top;
var room_h = TAB_H/2 - margin_top;

// grid
var cols = 3;
var bed_w = 160 * scale;
var bed_h = 100 * scale;
var spacing = 40 * scale;

var rows = ceil(array_length(global.beds) / cols);

var total_w = cols * bed_w + (cols - 1) * spacing;
var total_h = rows * bed_h + (rows - 1) * spacing;

var start_x = draw_x + (TAB_W - total_w) / 2;
var start_y = room_y + (room_h - total_h) / 2;

// draw

for (var i = 0; i < 6; i++) {

    var col = i mod cols;
    var row = i div cols;

    var bx = start_x + col * (bed_w + spacing);
    var by = start_y + row * (bed_h + spacing);

    var has_patient = global.beds[i] != noone;

    draw_set_color(has_patient ? c_red : c_gray);
    draw_rectangle(bx, by, bx + bed_w, by + bed_h, false);

    draw_set_color(c_white);
    draw_text(bx + 10, by + 10, "Bed " + string(i+1));

    if (i == selected_bed) {
        draw_set_color(c_yellow);
        draw_rectangle(bx, by, bx + bed_w, by + bed_h, true);
    }
}

draw_set_color(make_color_rgb(30,30,30));
draw_rectangle(draw_x, split_y, draw_x + TAB_W, draw_y + TAB_H, false);

if (selected_bed != -1) {

    var patient = global.beds[selected_bed];

    draw_set_color(c_white);

    if (patient == noone) { 
        draw_text(draw_x + 30, split_y + 30, "Bed is empty");
    } else {
        draw_text(draw_x + 30, split_y + 30, "Name: " + patient.patient_name + " " + patient.patient_surname);
        draw_text(draw_x + 30, split_y + 70, "Condition: " + patient.patient_status);
    }
}
//DRAW BUTTON
if (selected_bed != -1) {

    var patient = global.beds[selected_bed];

    if (patient != noone) {

        var btn_w = 180 * scale;
        var btn_h = 50 * scale;

        var btn_x = draw_x + 30 * scale;
        var btn_y = split_y + 150 * scale;

        draw_set_color(c_green);
        draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, false);

        draw_set_color(c_black);
        draw_text(btn_x + 20 * scale, btn_y + 15 * scale, "Discharge");
    }
}

