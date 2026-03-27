

if(global.score >= 3){
	show_debug_message("You win!");
	persistent = false;
	room_goto(rm_win);
}

if(global.life <= 0){
	show_debug_message("You lose..");
	persistent = false;
	room_goto(rm_lose);
}
