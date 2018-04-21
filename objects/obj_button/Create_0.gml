/// @description 
event_inherited();
enum bType {
	gotoPhoneTest,
	gotoRm,
	exitGame,
	resume,
	endLevel
}
type = bType.gotoRm;
rm = -1;

// The number of values affected by springing
_springValues = 2;

// Declare springing-related variables
UsesNumericSpringing(_springValues);

// Spring indexes
SPRING_XSCALE = 1;
SPRING_YSCALE = 1;

// Initialize
_springTarget[SPRING_XSCALE] = 1;
_springTarget[SPRING_YSCALE] = 1;
_springValue[SPRING_XSCALE]  = 1.5;
_springValue[SPRING_YSCALE]  = 1.5;
