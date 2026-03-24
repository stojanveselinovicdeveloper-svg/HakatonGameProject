if (mode == "fade_out")
{
    transition_alpha += transition_speed;

    if (transition_alpha >= 1)
    {
        transition_alpha = 1;
        room_goto(target_room);
        mode = "fade_in";
    }
}
else if (mode == "fade_in")
{
    transition_alpha -= transition_speed;

    if (transition_alpha <= 0)
    {
        transition_alpha = 0;
        mode = "idle";
    }
}