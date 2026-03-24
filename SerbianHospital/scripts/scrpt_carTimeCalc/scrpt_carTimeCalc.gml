function scrpt_car_time_calc(location){
	switch location
	{
		//15 minutes
		case 1:
			return 15;
		//10 minutes	
		case 2:
			return 10;
		//5 minutes
		case 3:
			return 5;
			
		case 9:
			return 0.5;
			
		default:
			return 0.1;
	}
}