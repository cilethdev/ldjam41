/// Spring(index, target, dampRatio, angFreq);

///////////////////////////////////////////////////////////////////////////////
// NOTE: Call Spring() every frame for each spring value that the calling
// instance has stored.
///////////////////////////////////////////////////////////////////////////////

var springIndex, springTarget, springDampingRatio, springAngularFrequency, springTimeStep;

// Input
springIndex            = argument0;        // Label for the pair of values are being shifted (value, velocity)
springTarget           = argument1;        // The value that your springed value will be approaching
springDampingRatio     = argument2;        // A damping ratio of 0 means that the oscillation happens indefinitely, a damping ratio of 1 is a critically damped system
springAngularFrequency = argument3;        // An angular frequency of (2 * PI) means oscillation completes one period every second (1Hz)
springTimeStep         = (1 / room_speed); // Time between calculation(s)

var f, oo, hoo, hhoo, detinv, detx, detv;

// Calculations
f      = (1.0 + (((2.0 * springTimeStep) * springDampingRatio) * springAngularFrequency));
oo     = (springAngularFrequency * springAngularFrequency);
hoo    = (springTimeStep * oo);
hhoo   = (springTimeStep * hoo);
detinv = (1.0 / (f + hhoo));
detx   = ((f * _springValue[springIndex]) + (springTimeStep * _springVelocity[springIndex]) + (hhoo * springTarget));
detv   = (_springVelocity[springIndex] + (hoo * (springTarget - _springValue[springIndex])));

// Output (@ accessor uses actual instance variable rather than the copy created by script access)
_springValue[@ springIndex]    = (detx * detinv);
_springVelocity[@ springIndex] = (detv * detinv);
