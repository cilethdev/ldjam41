/// @arg time the base time for the event

var time = argument0;

var _timeScale = 30;
var _variationScale = random_range(0.8,1.2);
var _alarmTime = time*_variationScale*_timeScale;
if(_alarmTime < 1){
	_alarmTime = 1;
}
alarm[0] = _alarmTime;