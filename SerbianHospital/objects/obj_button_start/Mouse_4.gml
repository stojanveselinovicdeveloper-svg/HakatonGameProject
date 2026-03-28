event_inherited();

times_pressed += 1;

if(times_pressed >=2){
	button_text = "Hint:\npress n hold";
	needs_help = true;
}