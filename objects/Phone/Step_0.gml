
if(is_undefined(player)){
	return;	
}

if(phoneOut){
	idealx = anchorOutx;
	idealy = anchorOuty;
}
else{
	idealx = anchorAwayx;
	idealy = anchorAwayy;
}

//move to the ideal location
x = 0.8*x+0.2*idealx;
y = 0.8*y+0.2*idealy;

//	Animations.
if(responseState == ResponseState.noSelectionMade){
	var moreScale = 1;
	if(phoneOut){
		moreScale = 0.5;
	}
	ani_rumbleScale = ani_rumbleScaleActive*moreScale;
	ani_rumble += ani_rumbleRate*(1-alarm[0]/(timeToResponse*30));
}
else{
	ani_rumbleScale *= 0.8;	
	if(ani_rumbleScale < 1){
		ani_rumble = 0;	
	}
}

if(phoneOut){
	ani_breathScale = ani_breathScaleActive;
	ani_breath += ani_breathRate;
}
else{
	ani_breathScale *= 0.8;
	if(ani_breathScale < 1){
		ani_breathScale = 0;	
	}
}


ani_messageShift *= 0.7; //scrolls new messages onto the screen.


//horizontal
ani_x = dsin(ani_breath)*ani_breathScale;

//vertical
ani_y = dsin(2*ani_breath)*ani_breathScale/4;

//roll
direction = dsin(ani_rumble)*ani_rumbleScale-dsin(ani_breath)*ani_breathScale/5;

// key events.
//take out or putaway phone
if(keyboard_check_pressed(vk_tab)){
	phoneOut = !phoneOut;	
}

// select a response
if(responseState == ResponseState.noSelectionMade){
	for(var i=0; i<array_length_1d(keyCode); ++i){
		if(keyboard_check_pressed(keyCode[i])){
			var mediumResponse = 0; //janky because i some reason didn't forsee this when making correct response an int.
			if(correctResponse ==  0){
				mediumResponse = 1;
			}
			if(i == responseKey[correctResponse]){
				responseState = ResponseState.correct;
				PhoneCorrect(player);
			}
			else if(i == responseKey[mediumResponse]){				
				responseState = ResponseState.medium;
				PhoneMeh(player);
			}
			else{
				responseState = ResponseState.wrong;
				PhoneWrong(player);
			}
			PhoneSetEventAlarm(0);
		}
	}
	if(keyboard_check_pressed(ord("K")) || keyboard_check_pressed(ord("I"))){ //k & i are always wrong because they do do well as a font button.
		responseState = ResponseState.wrong;
		PhoneSetEventAlarm(0);
	}
}

for(var i=0; i<array_length_1d(keyCode); ++i){
	if(keyboard_check_pressed(keyCode[i])){
		lastKeyPressed = i;
	}
}