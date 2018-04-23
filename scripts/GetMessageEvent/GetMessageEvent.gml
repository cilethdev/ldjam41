/// @desc returns a message event.
// @ arg events

// the event structure
//0	the initial question
//1-3	the three responses,  it is up to the caller to scramble 1 and 2.
//		1 = right
//		2 = medium
//		3 = wrong
//4 the correct message chain
//5 the medium message chain
//6 the wrong message chain.
return argument0[irandom(array_length_1d(argument0)-1)];
