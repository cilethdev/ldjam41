/// CleanMemNumericSpringing();

///////////////////////////////////////////////////////////////////////////////
// NOTE: Call CleanMemNumericSpringing() when the calling instance that has 
// used Spring() is no longer in use.
///////////////////////////////////////////////////////////////////////////////

// Clear memory used by springing array(s)
_springValue    = 0;
_springVelocity = 0;
_springTarget   = 0;
_springDampRat  = 0;
_springAngFreq  = 0;