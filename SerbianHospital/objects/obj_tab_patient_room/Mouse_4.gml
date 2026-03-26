if (point_in_rectangle(mouse_x, mouse_y,  x + win_w - 50 , y, x + win_w- x_edge, y  + 50)) {
        is_open = false;
        show_debug_message("Exit");
        exit; 
    }