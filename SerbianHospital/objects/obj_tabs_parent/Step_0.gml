if (!is_open){
	visible = false;
	exit;
} 
visible = true;

var mx = mouse_x;
var my = mouse_y;
window_set_cursor(cr_default);
// stop dragging
if (mouse_check_button_released(mb_left)) {
    dragging = false;
	//resizing = false;
	
}

// start dragging or resizing
if (mouse_check_button_pressed(mb_left)) {
	// CLOSE 
    if (point_in_rectangle(mx, my,  x + win_w - 50 , y, x + win_w- x_edge, y  + 50)) {
        is_open = false;
        show_debug_message("Exit");
        exit; 
    }

    //  DRAG
    if (point_in_rectangle(mx, my, x, y, x + win_w, y + win_h/6)) {
        dragging = true;
        drag_offset_x = mx - x;
        drag_offset_y = my - y;
    }
	// if (point_in_rectangle(mx, my, x + win_w - x_edge , y + win_h - y_edge, x +win_w + resize_margin - x_edge, y + win_h + resize_margin - y_edge)) {
        
    //    resizing = true;
   // }
}

// move window
if (dragging) {
    x = mx - drag_offset_x;
    y = my - drag_offset_y;
	window_set_cursor(cr_drag);
	
}
//resizing window
///if (resizing) {
///    win_w = max(150, mouse_x - x);
//    win_h = max(100, mouse_y - y);
//	window_set_cursor(cr_size_nwse);
//}

//cursor change for drag
 if point_in_rectangle(mx, my, x, y, x + win_w, y + win_h/6 && !dragging){
	window_set_cursor(cr_handpoint);
 }

//cursor change for resize
//if (point_in_rectangle(mx, my, x + win_w - x_edge , y + win_h - y_edge, x +win_w + resize_margin - x_edge, y + win_h + resize_margin - y_edge) ) {
//    window_set_cursor(cr_size_nwse); 
//}