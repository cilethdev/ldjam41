

//Animations.
ani_rumble += ani_rumbleRate;
direction = dsin(ani_rumble)*ani_rumbleScale;


// key events.
if(responseState == ResponseState.noSelectionMade){
	for(var i=0; i<array_length_1d(keyCode); ++i){
		if(keyboard_check_pressed(keyCode[i])){
			lastKeyPressed = i;
			var mediumResponse = 0; //janky because i some reason didn't forsee this when making correct response an int.
			if(correctResponse ==  0){
				mediumResponse = 1;
			}
			if(i == responseKey[correctResponse]){
				responseState = ResponseState.correct;
			}
			else if(i == responseKey[mediumResponse]){				
				responseState = ResponseState.medium;
			}
			else{
				responseState = ResponseState.wrong;
			}
		}
	}
}