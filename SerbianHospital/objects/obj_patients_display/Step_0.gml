updateAppDisplay();

if (current_scale >= 0.99){
	is_open = true;
}
else if (current_scale <= 0) {
	is_open = false;
}


if (instance_exists(close_btn)){
	close_btn.target_scale = target_scale;	
}

function updateAppDisplay() {
	current_scale = lerp(current_scale, target_scale, 0.15);
	image_xscale = current_scale;
	image_yscale = current_scale;
	x = room_width * 0.5;
	y = room_height * 0.5;
}

handleCards();

//Patient related
function handleCards(){
	// Create cards only once when popup is fully opened
	if (!cards_created && current_scale >= 0.99)
	{
	    createCards();
	    cards_created = true;
	}

	// Optional: if popup closes, remove cards and reset
	if (current_scale < 0.99 && cards_created)
	{
	    for (var i = 0; i < array_length(card_list); i++)
	    {
	        if (instance_exists(card_list[i]))
	        {
	            with (card_list[i]) instance_destroy();
	        }
	    }

	    card_list = [];
	    cards_created = false;
	}
}

function createCards()
{
    var parent_width  = sprite_get_width(sprite_index)  * current_scale;
    var parent_height = sprite_get_height(sprite_index) * current_scale;

    var parent_left = x - parent_width * 0.5;
    var parent_top  = y - parent_height * 0.5;

    var card_count = 3;
    var card_spacing = 16;

    var card_width = parent_width * 0.8;
    var card_height = 128;

    // inset from the true visible content area
    var content_padding_top = 40;

    var card_center_x = x;
    var first_card_center_y = parent_top + content_padding_top + card_height * 0.5;

    for (var i = 0; i < card_count; i++)
    {
        var card_center_y = first_card_center_y + i * (card_height + card_spacing);

        var card = instance_create_layer(card_center_x, card_center_y, "Instances", obj_patient_card);

        card.parent_popup = id;
        card.card_width = card_width;
        card.card_height = card_height;

        card.patient_name = "Patient " + string(i + 1);
        card.patient_age = "Age: " + string(20 + i);
        card.patient_status = "Stable";

        card.x_offset = card_center_x - x;
        card.y_offset = card_center_y - y;

        card.image_xscale = card.card_width / sprite_get_width(card.sprite_index);
        card.image_yscale = card.card_height / sprite_get_height(card.sprite_index);

        array_push(card_list, card);
    }
}