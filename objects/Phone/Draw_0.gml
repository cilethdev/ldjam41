/// @description draws the phone by combining multiple layers.
// You can write your code in this editor

// 3 layers drawn to the phone surface.
phoneWidth = 250;
phoneHeight = 500;

// base phone screen.
//		may get warp affect applied to it.
//		this is where the text conversation will appear.
var phoneSurface = surface_create_ext()
if(!surface_exists()

surface_set_target(phoneSurface); // begin drawing to the phone.
draw_set_color(c_white);
draw_rectangle(0,0,phoneWidth,phoneHeight,false);
	
draw_set_color(c_green);
FontSet(fnt_HUD,c_white,fa_left,fa_top);
draw_rectangle(phoneWidth/8,phoneWidth/8,string_width_ext(keyboard_string,3,phoneWidth/8*6),string_height_ext(keyboard_string,3,phoneWidth/8*6),false);
draw_text_ext(phoneWidth/8,phoneWidth/8,keyboard_string,3,phoneWidth/8*6);
	
surface_reset_target(); // finish drawing to the phone.
draw_surface_ext(phoneSurface,x,y,1,1,0,0,0);


// glass.
//		can get cracked.

// phone case
//		where most decals other than glass affects get applied.
//		these decals will cover the body of the phone as well as the glass.


// now that the phone surface has been built.
//		manipulate the phone to make it look like it is being flung around.