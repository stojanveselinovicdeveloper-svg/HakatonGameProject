if(!is_open){
	visible = false;
	exit;
}
visible = true;
//CLICKABLES
var room_x = x;
var room_y = y + 60;
var room_w = 960;
var room_h = 1080/2 - 60;

var bed_w = 160;
var bed_h = 100;
var x_spacing = 200;
var y_spacing = 40;

// loop beds
var start_x = room_x + (room_w - (bed_w * 2 + x_spacing)) / 2;
var start_y = room_y + 40;

for (var i = 0; i < 6; i++) {

    var col = i mod 2;
    var row = i div 2;

    var bx = start_x + col * (bed_w + x_spacing);
    var by = start_y + row * (bed_h + y_spacing);

    if (mouse_check_button_pressed(mb_left)) {
        if (point_in_rectangle(mouse_x, mouse_y, bx, by, bx + bed_w, by + bed_h)) {
            selected_bed = i;
        }
    }
}
//DISCHARGE BUTTON
if (selected_bed != -1) {

    var patient = beds[selected_bed];

    if (patient != noone) {

        var btn_x = x + 30;
        var btn_y = y + 1080/2 + 150;
        var btn_w = 180;
        var btn_h = 50;

        if (mouse_check_button_pressed(mb_left)) {
            if (point_in_rectangle(mouse_x, mouse_y, btn_x, btn_y, btn_x + btn_w, btn_y + btn_h)) {
                beds[selected_bed] = noone;
            }
        }
    }
}