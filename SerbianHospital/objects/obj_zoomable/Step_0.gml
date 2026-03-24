event_inherited();

if (zooming)
{
    image_xscale = lerp(image_xscale, target_scale, zoom_speed);
    image_yscale = lerp(image_yscale, target_scale, zoom_speed);
}