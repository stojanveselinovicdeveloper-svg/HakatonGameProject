if (!disabled){
	image_alpha = lerp(image_alpha, target_alpha, fade_speed);

	if (abs(image_alpha - target_alpha) < 0.01)
	{
	    image_alpha = target_alpha;
	}
}