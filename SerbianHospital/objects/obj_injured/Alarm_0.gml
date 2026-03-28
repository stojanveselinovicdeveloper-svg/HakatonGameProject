
if(!delivered) {
	patient_status = "Deceased";
	remove_from_house();
	scrpt_removePatientCall(self);
	show_debug_message("Ouch lost a life! ");
	audio_play_sound(snd_dead, 100, false);
	global.life -= 1;
	instance_destroy(self);
}