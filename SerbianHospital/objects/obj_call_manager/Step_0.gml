if (!disabled &&!call_in_progress && !call_pending) {
    next_call_timer--;

    if (next_call_timer <= 0) {
		set_random_patient();
        ring_sound_id = audio_play_sound(snd_phone_call, 10, true);
		call_progress_timer = irandom_range(pickup_timer_min,pickup_timer_max);
        call_pending = true;
    }
}

if (call_pending && room == target_room && can_show_call_screen()) {
    if (!instance_exists(obj_call_screen)) {
        caller_screen_popup = instance_create_layer(room_width * 0.5, room_height * 0.5 - 7, "Instances", obj_call_screen);
        caller_screen_popup.manager = id;
        call_in_progress = true;
        call_pending = false;
		toggle_monitor_ui();
    }
}

if (call_in_progress) {
    call_progress_timer--;

    if (call_progress_timer <= 0) {
        reset_phone_cycle(false);
    }
}

if (call_answered) {
	if (global.patient_call != undefined){
		array_push(global.patient_calls,global.patient_call);
		global.patient_call = undefined;
	}
	reset_phone_cycle(true);
}

if(disabled && next_call_timer <= 10){
	next_call_timer = irandom_range(min_call_delay, max_call_delay);
	stop_ring_sound();
}

function set_random_patient(){
	var filtered = filter_patients(call_priority);

    if (array_length(filtered) > 0) {
        var random_index = irandom(array_length(filtered) - 1);
        global.patient_call = filtered[random_index];
    } else {
        global.patient_call = undefined;
    }
}

function filter_patients(_priority){
	var filtered = [];
    var patients = global.patients;
    var active = global.active_patients;
    var completed = global.completed_patients;

    var patients_len = array_length(patients);
    var active_len = array_length(active);
    var completed_len = array_length(completed);

    for (var i = 0; i < patients_len; i++) {
        var patient = patients[i];

        if (patient.patient_priority != _priority) {
            continue;
        }

        var patient_id = patient.patient_id;
        var found = false;

        for (var j = 0; j < active_len; j++) {
            if (active[j].patient_id == patient_id) {
                found = true;
                break;
            }
        }

        if (found) {
            continue;
        }

        for (var k = 0; k < completed_len; k++) {
            if (completed[k].patient_id == patient_id) {
                found = true;
                break;
            }
        }

        if (!found) {
            array_push(filtered, patient);
        }
    }

    return filtered;
}


function reset_phone_cycle(_answered){
	stop_ring_sound();
	call_pending = false;
	call_in_progress = false;
	call_answered = false;
	next_call_timer = irandom_range(min_call_delay, max_call_delay);
	call_progress_timer = -1;
	if (caller_screen_popup != noone){
		with(caller_screen_popup){
			instance_destroy();
		}
	}
	toggle_monitor_ui();
	
	if (instance_exists(obj_monitor_display)) {
	    var monitor_display = instance_find(obj_monitor_display, 0);
	    monitor_display.click_block_timer = 2;
	}
	
}

function stop_ring_sound() {
    if (ring_sound_id != -1) {
        audio_stop_sound(ring_sound_id);
        ring_sound_id = -1;
    }
}

function toggle_monitor_ui(){
	if (instance_exists(obj_monitor_display)){
		var monitor_display = instance_find(obj_monitor_display,0);
		monitor_display.disabled = !monitor_display.disabled;
	}
}

function can_show_call_screen() {
    if (instance_exists(obj_room_transition2)) {
        var tr = instance_find(obj_room_transition2, 0);
        return tr.mode == "idle";
    }
    return true;
}

