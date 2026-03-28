// Inherit the parent event
event_inherited();

if(hold_time >= 60*3){
	if (!instance_exists(obj_room_transition)) {
    instance_create_layer(0, 0, "Instances", obj_room_transition);
	hold_time = 0;
}
}

if (button_hover && mouse_check_button(mb_left)) {
    hold_time += 1;
} else {
    hold_time = 0;
}
