event_inherited();

loadActivePatients();

handleCards();


//Patient related
function handleCards(){
	if (!cards_created && current_scale >= 0.99)
	{
	    create_cards();
	    cards_created = true;
	}

	if (current_scale < 0.99 && cards_created)
	{
	    destroy_cards();
	    cards_created = false;
	}
}

function destroy_cards(){
	for (var i = 0; i < array_length(card_list); i++)
	{
	    if (instance_exists(card_list[i]))
	    {
	        with (card_list[i]) instance_destroy();
	    }
	}

	card_list = [];
}

function create_cards()
{
    var parent_width  = sprite_get_width(sprite_index)  * current_scale;
    var parent_height = sprite_get_height(sprite_index) * current_scale;

    var parent_left = x - parent_width * 0.5;
    var parent_top  = y - parent_height * 0.5;

    var card_count = array_length(patient_list);
    var card_spacing = 16;

    var card_width = parent_width * 0.8;
    var card_height = 180;
	var content_padding_top = 40;
	
	
	var start_local_y = -parent_height * 0.5 + content_padding_top + card_height * 0.5;

	content_height = card_count * card_height + max(0, card_count - 1) * card_spacing;

    var card_center_x = x;
    var first_card_center_y = parent_top + content_padding_top + card_height * 0.5;

    for (var i = 0; i < card_count; i++)
    {
        var card_center_y = first_card_center_y + i * (card_height + card_spacing);

        var card = instance_create_layer(card_center_x, card_center_y, "Instances", obj_patient_card);
		
		var local_x = 0;                                                  
		var local_y = start_local_y + i * (card_height + card_spacing);

		card.base_x_offset = local_x;
		card.base_y_offset = local_y

        card.parent_popup = id;
        card.card_width = card_width;
        card.card_height = card_height;

        card.patient_name = patient_list[i].patient_name;
        card.patient_age = patient_list[i].patient_age;
        card.patient_status = patient_list[i].patient_status;        
		card.patient_surname = patient_list[i].patient_surname;
        card.patient_address = patient_list[i].patient_address;
		card.patient_priority = patient_list[i].patient_priority;	
		card.patient_description = patient_list[i].patient_description;



        card.x_offset = card_center_x - x;
        card.y_offset = card_center_y - y;

        card.image_xscale = card.card_width / sprite_get_width(card.sprite_index);
        card.image_yscale = card.card_height / sprite_get_height(card.sprite_index);

        array_push(card_list, card);
    }
}

function loadActivePatients(){
	if (variable_global_exists("active_patients") && array_length(card_list) < 1){
		patient_list = global.patient_calls;
	}
}