event_inherited();
with(obj_room_transition2){
	target_room = other.go_to;
	mode = "fade_out"
}

if (variable_global_exists("open_apps")){
	global.open_apps = [];
}