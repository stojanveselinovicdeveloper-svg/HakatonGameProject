if(!is_open){
	exit;
}

var margin_top = 60;
var split_y = y + win_h / 2;
//SPRITE
draw_sprite_stretched(spr_tab_base, 0, x, y, win_w, win_h);

//TOP HALF
var room_x = x;
var room_y = y + margin_top;
var room_w = win_w;
var room_h = (win_h / 2) - margin_top;

var bed_w = 160;
var bed_h = 100;
var x_spacing = 200;
var y_spacing = 40;

// center beds nicely
var cols = 2;
var rows = ceil(array_length(beds) / cols);

var total_w = cols * bed_w + (cols - 1) * x_spacing;
var total_h = rows * bed_h + (rows - 1) * y_spacing;

var start_x = room_x + (room_w - total_w) / 2;
var start_y = room_y + (room_h - total_h) / 2;

for (var i = 0; i < 6; i++) {

    var col = i mod 2;
    var row = i div 2;

    var bx = start_x + col * (bed_w + x_spacing);
    var by = start_y + row * (bed_h + y_spacing);

    var has_patient = beds[i] != noone;

    draw_set_color(has_patient ? c_red : c_gray);
    draw_rectangle(bx, by, bx + bed_w, by + bed_h, false);

    draw_set_color(c_white);
    draw_text(bx + 10, by + 10, "Bed " + string(i+1));

    // highlight selected
    if (i == selected_bed) {
        draw_set_color(c_yellow);
        draw_rectangle(bx, by, bx + bed_w, by + bed_h, true);
    }
}

//BOTTOM HALF
var panel_x = x;
var panel_y = split_y;
var panel_w = win_w;
var panel_h = win_h / 2;

draw_set_color(c_gray);
draw_rectangle(panel_x + 15, panel_y, panel_x + panel_w - 13, panel_y + panel_h, false);

if (selected_bed != -1) {

    var patient = beds[selected_bed];

    draw_set_color(c_white);

    if (patient == noone) {
        draw_text(panel_x + 30, panel_y + 30, "Bed is empty");
    } else {
        draw_text(panel_x + 30, panel_y + 30, "Name: " + patient.name);
        draw_text(panel_x + 30, panel_y + 70, "Condition: " + patient.condition);
    }
}

//DRAW BUTTON
if (selected_bed != -1) {

    var patient = beds[selected_bed];

    if (patient != noone) {

        var btn_x = panel_x + 30;
        var btn_y = panel_y + 150;
        var btn_w = 180;
        var btn_h = 50;

        draw_set_color(c_green);
        draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, false);

        draw_set_color(c_black);
        draw_text(btn_x + 20, btn_y + 15, "Discharge");
    }
}