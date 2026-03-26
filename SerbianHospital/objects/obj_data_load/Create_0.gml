
path = working_directory + "patients.json";

if (file_exists(path)){
	var json = "";
	
	var file = file_text_open_read(path);
	
	while(!file_text_eof(file)){
		json += file_text_readln(file);
	}
	
	file_text_close(file);
	global.patients = json_parse(json);
}
else {
	global.patients = [];
}

if (variable_global_exists("patients")){
	
	global.active_patients = [];
	//For test purposes lets put 10 active patients on display
	for (var i = 0; i < 10; i++) {
		global.active_patients[i] = global.patients[i];
	}
}
global.ui_blocking = false;
global.open_apps = 0;
