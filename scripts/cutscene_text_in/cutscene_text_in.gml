///@desc cutscene_text_in(text);
///@arg text
///@arg hold
var _text = argument0;
var _hold = argument1*room_speed;
var _fillSpd = argument2;

if (!textStarted) {
	textStarted = true;
	textCopy = "";
}

if (string_length(textCopy) != string_length(_text) && textT < 0) {
	textCopy = string_copy(_text,1,charNum);
	charNum += _fillSpd;
} else {
	if (textT < _hold) {
		textT++;
	} else {
		if (string_length(textCopy) > 0) {
			textCopy = string_copy(_text,1,charNum);
			charNum -= _fillSpd;
		} else {
			textT = -1;
			textStarted = false;
			textCopy = "";
			cutscene_end_action();
		}
	}
}