/// @description when this goes off, progress in the text event system.

switch(responseState){
	case ResponseState.noSelectionMade:
		responseState = ResponseState.tooLate;
		PhoneTooLate(player);
	case ResponseState.correct:
	case ResponseState.medium:
	case ResponseState.wrong:
	case ResponseState.tooLate:
		//send the next message
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
			case ResponseState.tooLate:
				responseChain = tooLateResponseChain;
				break;
		}
		if(is_array(responseChain)){
			if(messageIndex < array_length_1d(responseChain)){
				var index = array_length_1d(responseChain)-1-messageIndex;
				++messageIndex;
				var curResponse = responseChain[index];
				textHistory = PhoneAddMessage(textHistory,curResponse[0],curResponse[1]);
				PhoneSetEventAlarm(timeText);
			}
			else{
				responseState = ResponseState.noEvent; //run out of reply chain, this means the event is now over.
				PhoneSetEventAlarm(timeEndOfEvent);
			}
		}
		else{
			show_error("the response chain was not an array?",false);	
			PhoneSetEventAlarm(timeText);//maybe it will fix itself?  this should never happen though.
		}
		break;
	case ResponseState.noEvent:
		// get a new event
		var event = GetMessageEvent();
		// add question to the text history.
		textHistory = PhoneAddMessage(textHistory,false,event[0]); 
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
		// set new response keys.
		responseKey[0] = irandom(array_length_1d(keyCode));
		responseKey[1] = irandom(array_length_1d(keyCode));
		
		//get a random too late response chain
		tooLateResponseChain = GetTooLateResponseChain();
		messageIndex = 0;
		//set the response state
		responseState= ResponseState.noSelectionMade;
		PhoneSetEventAlarm(timeToResponse);
		break;
}
