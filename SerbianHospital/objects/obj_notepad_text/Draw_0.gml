var start_x = x + margin;
var start_y = y + margin;
var usable_w = box_w - margin * 2;
var caret_height = string_height("A");

for (var i = 0; i < array_length(lines); i++)
{
	var line_y = start_y + (i * row_height) + caret_height;
    draw_line(start_x, line_y, start_x + usable_w, line_y);
    draw_text(start_x, start_y + i * row_height, lines[i]);
}

if (is_writing)
{
    var caret_x = start_x + string_width(lines[current_line_index]);
    var caret_y = start_y + current_line_index * row_height;

    if ((current_time div 300) mod 2 == 0)
    {
        draw_rectangle(caret_x, caret_y, caret_x + 2, caret_y + caret_height, false);
    }
}