/// @description when this goes off, progress in the text event system.

switch(responseState){
	case ResponseState.correct:
	case ResponseState.medium:
	case ResponseState.wrong:
		//send the next message
//		var newMessage;
		var responseChain;
		switch(responseState){
			case ResponseState.correct:
				responseChain = correctResponseChain;
				break;
			case ResponseState.medium:
				responseChain = mediumResponseChain;
				break;
			case ResponseState.wrong:
				responseChain = wrongResponseChain;
				break;
		}
		if(is_array(responseChain)){
			if(messageIndex >= array_length_1d(responseChain)){
				responseState = ResponseState.noSelectionMade;
				//need to set the timer to the new amoutn.
			}
		}
		//
		break;
	case ResponseState.noEvent:
		// get a new event
		var event = GetMessageEvent();
		//question
		textHistory = PhoneAddMessage(textHistory,false,response[0]);
		//responses
		response[2] = event[3]; //response 2 is always the incorrect one.
		if(random(100) < 50){ //randomizes which of the first 2 responses is correct.
			correctResponse = 0;
			response[0] = event[1]; 
			response[1] = event[2];
		}
		else{
			correctResponse = 1;
			response[0] = event[2];
			response[1] = event[1];
		}
		//response chains
		correctResponseChain = event[4];
		mediumResponseChain = event[5];
		wrongResponseChain = event[6];		
		//set the response state
		responseState= ResponseState.noSelectionMade;
		break;
	case ResponseState.noSelectionMade:
		// you are now too late.
		break;
}
