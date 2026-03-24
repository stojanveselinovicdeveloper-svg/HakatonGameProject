if (instance_exists(pad))
{
    x = pad.x + x_offset;
    y = pad.y + y_offset;
}

if (mouse_check_button_pressed(mb_left))
{
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + box_w, y + box_h))
    {
        is_writing = true;
        keyboard_string = lines[current_line_index];
    }
    else
    {
        is_writing = false;
    }
}

if (is_writing)
{
    lines[current_line_index] = keyboard_string;

    // overflow handling
    if (string_length(lines[current_line_index]) > max_chars_per_line)
    {
        var overflow = string_copy(
            lines[current_line_index],
            max_chars_per_line + 1,
            string_length(lines[current_line_index]) - max_chars_per_line
        );

        lines[current_line_index] = string_copy(lines[current_line_index], 1, max_chars_per_line);

        // if next line exists, move into it
        if (current_line_index < max_lines - 1)
        {
            if (current_line_index == array_length(lines) - 1)
            {
                array_push(lines, overflow);
            }
            else
            {
                lines[current_line_index + 1] = overflow + lines[current_line_index + 1];
            }

            current_line_index += 1;
            keyboard_string = lines[current_line_index];
        }
        else
        {
            // last allowed line reached, just clamp
            keyboard_string = lines[current_line_index];
        }
    }

    // ENTER = next line if possible
    if (keyboard_check_pressed(vk_enter))
    {
        if (current_line_index < max_lines - 1)
        {
            if (current_line_index == array_length(lines) - 1)
            {
                array_push(lines, "");
            }

            current_line_index += 1;
            keyboard_string = lines[current_line_index];
        }
    }

    // BACKSPACE on empty line = go back
    if (keyboard_check(vk_backspace) || keyboard_check_pressed(vk_backspace))
    {
        if (keyboard_string == "" && current_line_index > 0)
        {
            if (current_line_index == array_length(lines) - 1)
            {
                array_delete(lines, current_line_index, 1);
            }

            current_line_index -= 1;
            keyboard_string = lines[current_line_index];
        }
    }

    lines[current_line_index] = keyboard_string;
}

save_note_data();

function save_note_data()
{
    global.saved_note_lines = [];

    for (var i = 0; i < array_length(lines); i++)
    {
        global.saved_note_lines[i] = lines[i];
    }

    global.saved_current_line = current_line_index;
}