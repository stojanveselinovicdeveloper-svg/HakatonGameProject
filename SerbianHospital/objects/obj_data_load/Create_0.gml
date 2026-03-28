
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
global.max_tabs = 2;
global.checked_one_tab = false;

<<<<<<< HEAD
=======
for (i = 0; i < 6; i++){
	global.patient_calls[i] = global.patients[i];
}
>>>>>>> parent of ffa4c99 (Merge pull request #24 from stojanveselinovicdeveloper-svg/test/1-katas-evil-testing-branch)

