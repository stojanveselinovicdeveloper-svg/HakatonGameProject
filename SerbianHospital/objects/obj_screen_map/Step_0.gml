// Inherit the parent event
event_inherited();
if (!is_open){
	obj_car1.visible = false;
	obj_car2.visible = false;
	exit;
} 

	obj_car1.visible = true;
	obj_car2.visible = true;

switch obj_car1.location_curr {
	case 1:
		scrpt_houseLocationTab(h1_rel_x, h1_rel_y, 1); break;
	case 2:
		scrpt_houseLocationTab(h2_rel_x, h2_rel_y, 1); break;
	case 3:
		scrpt_houseLocationTab(h3_rel_x, h3_rel_y, 1); break;
	case 4:
		scrpt_houseLocationTab(h4_rel_x, h4_rel_y, 1); break;
	case 5:
		scrpt_houseLocationTab(h5_rel_x, h5_rel_y, 1); break;
	case 6:
		scrpt_houseLocationTab(h6_rel_x, h6_rel_y, 1); break;
	default:
		scrpt_houseLocationTab(h_rel_x, h_rel_y, 1); break;
}

switch obj_car2.location_curr {
	case 1:
		scrpt_houseLocationTab(h1_rel_x, h1_rel_y, 2); break;
	case 2:
		scrpt_houseLocationTab(h2_rel_x, h2_rel_y, 2); break;
	case 3:
		scrpt_houseLocationTab(h3_rel_x, h3_rel_y, 2); break;
	case 4:
		scrpt_houseLocationTab(h4_rel_x, h4_rel_y, 2); break;
	case 5:
		scrpt_houseLocationTab(h5_rel_x, h5_rel_y, 2); break;
	case 6:
		scrpt_houseLocationTab(h6_rel_x, h6_rel_y, 2); break;
		default:
		scrpt_houseLocationTab(h_rel_x, h_rel_y, 2); break;
}