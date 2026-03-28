function scrpt_houseIndex(Address){
	Address = string_lower(Address);
	switch Address {
		case "gornja 1":
			return 1;
		case "gornja 2":
			return 2;
		case "gornja 3":
			return 3;
		case "donja 1":
			return 4;
		case "donja 2":
			return 5;
		case "donja 3":
			return 6;
		default:
			return -1;
	}
}