
if(global.score >= 10){
	show_debug_message("You win!");
	room_goto(rm_credits);
}

if(global.life <= 0){
	show_debug_message("You lose..");
	room_goto(rm_menu);
}
