if (going) {
    alpha += fade_speed;

    if (alpha >= 1) {
        alpha = 1;
        room_goto(target_room);
    }
}