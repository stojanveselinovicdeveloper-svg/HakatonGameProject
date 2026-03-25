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
					return 3;
				//10 minutes	
				case 2:
					return 2;
				//5 minutes
				case 3:
					return 1;
			
				case 4:
					return 3;
		
				case 5:
					return 2;
		
				case 6:
					return 1;
			
			}
		}
	}
	else {
		switch location
		{
			//15 minutes
			case 1:
				return 3;
			//10 minutes	
			case 2:
				return 2;
			//5 minutes
			case 3:
				return 1;
			
			case 4:
				return 3;
		
			case 5:
				return 2;
		
			case 6:
				return 1;
			
			default:
				return 0.1;
		}
	}
	
}