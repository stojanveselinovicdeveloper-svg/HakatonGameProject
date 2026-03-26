with (obj_tabs_parent) {
    
    if (left_tab == noone) {
        left_tab = other.id;
        other.slot = 0;
        other.x = 0;
    }
    else if (right_tab == noone) {
        right_tab = other.id;
        other.slot = 1;
        other.x = 960;
    }
    
    other.is_open = true;
}