
path = working_directory + "patientsTest.json";

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

global.active_patients = [];
global.patient_calls = [];
global.completed_patients = [];
global.patient_call = undefined;
global.ui_blocking = false;
global.open_apps_count = 0;
global.monitor_ui_disabled = false;
global.open_apps = [];

