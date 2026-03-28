checked = !checked;
if (variable_global_exists("max_tabs")){
	if(checked){
		global.max_tabs = 1;
	}
	else {
		global.max_tabs = 2;
	}
		
}