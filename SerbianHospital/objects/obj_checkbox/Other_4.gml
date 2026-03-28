if (variable_global_exists("max_tabs")){
	if(global.max_tabs == 1){
		checked = true;
	}
	else {
		checked = false;
	}
}

if (instance_exists(obj_call_manager)){
	var call_manager = instance_find(obj_call_manager,0);
	call_manager.disabled = true;
}