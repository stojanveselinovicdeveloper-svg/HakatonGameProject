var t = instance_nearest(x, y, obj_notepad_tab);
if (instance_exists(t))
{
    tab = t;
    t.pad = id;

    // Store how far tab is from notepad
    t.x_offset = t.x - x;
    t.y_offset = t.y - y;
}

var txt = instance_nearest(x, y, obj_notepad_text);
if (instance_exists(txt))
{
    text_area = txt;
    txt.pad = id;
    txt.x_offset = txt.x - x;
    txt.y_offset = txt.y - y;
}