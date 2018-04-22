/// @description 
delay = 60;
alpha = 0;
guiw	= display_get_gui_width();
guih	= display_get_gui_height();

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