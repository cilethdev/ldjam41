/// @description 
event_inherited();

//update spring values
for (var i = 0; i < _springValues; i++)
    Spring(i, _springTarget[i], 0.025, (7 * pi));
