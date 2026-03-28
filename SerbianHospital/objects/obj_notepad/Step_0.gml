x = lerp(x, target_x, move_speed);
y = lerp(y, target_y, move_speed);


if (abs(x - target_x) < 0.5) x = target_x;
if (abs(y - target_y) < 0.5) y = target_y;
