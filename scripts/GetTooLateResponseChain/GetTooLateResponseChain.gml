var responseChain = [];//[0] = newMessage(false,"umm...");
repeat(3){
	switch(irandom(10)){
		case 0:
			responseChain = PhoneAddMessage(responseChain,false,"are you dead?");
		case 1:
			responseChain = PhoneAddMessage(responseChain,false,"...");
			break;
		case 2:
			responseChain = PhoneAddMessage(responseChain,false,". . .");
			break;
		case 3:
			responseChain = PhoneAddMessage(responseChain,false,"hello?");
			break;
		case 4:
			responseChain = PhoneAddMessage(responseChain,false,"?");
			break;
		case 5:
			responseChain = PhoneAddMessage(responseChain,false,":(?");
			break;
		case 6:
			responseChain = PhoneAddMessage(responseChain,false,"you there?");
			break;
		case 7:
			responseChain = PhoneAddMessage(responseChain,false,"Or...fine.");
			break;
		case 8:
			responseChain = PhoneAddMessage(responseChain,false,"Whatever");	
			break;
		case 9:
			responseChain = PhoneAddMessage(responseChain,false,"Didn't wnat to go on this date anyways.");
			break;
		case 10:
			responseChain = PhoneAddMessage(responseChain,false,"Taylor's gonna kick your @$& for ignoring me");
			break;
	}
}
return responseChain;