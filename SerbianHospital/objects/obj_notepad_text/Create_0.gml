pad = noone;
x_offset = 0;
y_offset = 0;


width = sprite_get_width(sprite_index) * image_xscale;
height = sprite_get_height(sprite_index) * image_yscale;

image_xscale = 1;
image_yscale = 1;

margin = 5;
line_height = 40;
line_gap = 10;

is_writing = false;

box_w = 500;
box_h = 180;

margin = 5;
line_height = 24;
max_chars_per_line = 18;
max_lines = 15;
row_height = line_height + line_gap;

load_note_data();

function load_note_data()
{
    if (!variable_global_exists("saved_note_lines"))
    {
        global.saved_note_lines = [""];
    }

    if (!variable_global_exists("saved_current_line"))
    {
        global.saved_current_line = 0;
    }

    lines = [];

    for (var i = 0; i < array_length(global.saved_note_lines); i++)
    {
        lines[i] = global.saved_note_lines[i];
    }

    current_line_index = global.saved_current_line;

    if (current_line_index < 0) current_line_index = 0;
    if (current_line_index >= array_length(lines)) current_line_index = array_length(lines) - 1;

    keyboard_string = lines[current_line_index];
}