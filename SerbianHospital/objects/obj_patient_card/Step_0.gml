if (instance_exists(parent_popup))
{
    x = parent_popup.x + x_offset;
    y = parent_popup.y + y_offset;
    visible = parent_popup.current_scale >= 0.99;
	depth = parent_popup.depth - 100;
}
else
{
    instance_destroy();
}
