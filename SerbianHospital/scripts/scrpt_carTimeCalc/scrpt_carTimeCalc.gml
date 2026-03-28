function scrpt_car_time_calc(location, curr_location,  between_houses){
	if between_houses{
		if((location > 3 && curr_location < 4) || (location < 4 && curr_location >3)){
			return scrpt_car_time_calc(location, 0, false) + scrpt_car_time_calc(curr_location, 0, false);
		}
		else {
			switch abs(location - curr_location)
			{
				//15 minutes
				case 1:
					return 30;
				//10 minutes	
				case 2:
					return 20;
				//5 minutes
				case 3:
					return 10;
			
				case 4:
					return 30;
		
				case 5:
					return 20;
		
				case 6:
					return 10;
				default:
					return 1;
			
			}
		}
	}
	else {
		switch location
		{
			//15 minutes
			case 1:
				return 30;
			//10 minutes	
			case 2:
				return 20;
			//5 minutes
			case 3:
				return 10;
			
			case 4:
				return 30;
		
			case 5:
				return 20;
		
			case 6:
				return 10;
			
			default:
				return 1;
		}
	}
	
}