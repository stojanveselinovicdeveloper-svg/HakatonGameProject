if(!stable){
	global.life -=1;
	show_debug_message("Ouch lost a life!");
	instance_destroy(self);
}

