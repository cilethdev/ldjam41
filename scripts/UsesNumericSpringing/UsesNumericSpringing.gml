/// UsesNumericSpringing(numberOfValues);

///////////////////////////////////////////////////////////////////////////////
// NOTE: Call UsesNumericSpringing() before calling Spring() or other related 
// script(s).
///////////////////////////////////////////////////////////////////////////////

var num = argument0; // Number of spring values held by calling instance

// Initialize arrays of value(s)
_springValue[num]    = 0;
_springVelocity[num] = 0;
_springTarget[num]   = 0;
_springDampRat[num]  = 0;
_springAngFreq[num]  = 0;