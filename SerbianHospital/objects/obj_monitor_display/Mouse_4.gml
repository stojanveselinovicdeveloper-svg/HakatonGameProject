if (disabled || click_block_timer > 0) exit;

event_inherited();
window_set_cursor(cr_default);
with (obj_room_transition2)
{
	target_room = rm_monitor_display;
	mode = "fade_out";
}