event_inherited();

if (!is_open) exit;

var mx = mouse_x;
var my = mouse_y;

var scale = current_scale;

var TAB_W = 960 * scale;
var TAB_H = 1080 * scale;

var draw_x = x - TAB_W / 2;
var draw_y = y - TAB_H / 2;
var split_y = draw_y + TAB_H / 2;
var margin_top = 60 * scale;
var room_y = draw_y + margin_top;
var room_h = TAB_H/2 - margin_top;

var cols = 3;
var bed_w = 160 * scale;
var bed_h = 100 * scale;
var spacing = 40 * scale;

var rows = ceil(array_length(beds) / cols);

var total_w = cols * bed_w + (cols - 1) * spacing;
var total_h = rows * bed_h + (rows - 1) * spacing;

var start_x = draw_x + (TAB_W - total_w) / 2;
var start_y = room_y + (room_h - total_h) / 2;

// click
if (mouse_check_button_pressed(mb_left)) {

    for (var i = 0; i < 6; i++) {

        var col = i mod cols;
        var row = i div cols;

        var bx = start_x + col * (bed_w + spacing);
        var by = start_y + row * (bed_h + spacing);

        if (point_in_rectangle(mx, my, bx, by, bx + bed_w, by + bed_h)) {
            selected_bed = i;
        }
    }
}
//DISCHARGE BUTTON
if (selected_bed != -1) {

    var patient = beds[selected_bed];

    if (patient != noone) {

        var btn_w = 180 * scale;
        var btn_h = 50 * scale;

        var btn_x = draw_x + 30 * scale;
        var btn_y = split_y + 150 * scale;

        if (mouse_check_button_pressed(mb_left)) {
            if (point_in_rectangle(mouse_x, mouse_y, btn_x, btn_y, btn_x + btn_w, btn_y + btn_h)) {
                
                beds[selected_bed] = noone;
            }
        }
    }
}