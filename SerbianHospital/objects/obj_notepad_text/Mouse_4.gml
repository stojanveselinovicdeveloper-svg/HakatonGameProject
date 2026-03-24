if (instance_exists(pad) && pad.opened)
{
     if (mouse_check_button_pressed(mb_left) && !is_writing){
		keyboard_string = "";
		is_writing = true;
	}
}
