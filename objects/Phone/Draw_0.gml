/// @description draws the phone by combining multiple layers.
// You can write your code in this editor

// 3 layers drawn to the phone surface.

// base phone screen.
//		may get warp affect applied to it.
//		this is where the text conversation will appear.

//draw the screen
if(!surface_exists(screenSurface)){
	screenSurface = surface_create(surfaceWidth,surfaceHeight);
}
surface_set_target(screenSurface);
	draw_clear_alpha(c_white,0); // clear the surface since we need some of it to be clear.
	var scroll = ani_messageShift+screenHeight-5; //how far up the screen the message will need to be drawn.
	for(var i=0; i<array_length_1d(textHistory); ++i){
		var curText = textHistory[i];
		var mine = curText[0];
		var message = curText[1];
		var height;
		if(mine){// if the text is mine
			height = PhoneDrawTextMessage(screenWidth,scroll,message,mine,screenWidth);
		}
		else{
			height = PhoneDrawTextMessage(0,scroll,message,mine,screenWidth);
		}
		scroll -= (height+messageSpace);
	}
surface_reset_target();

//draw the phone
if(!surface_exists(phoneSurface)){
	phoneSurface = surface_create(surfaceWidth,surfaceHeight);	
}
surface_set_target(phoneSurface); // begin drawing to the phone.
	//draw the phone's background
	draw_sprite(spr_phoneBackground,0,0,0);
	//draw the screen on to the phone
	draw_surface_part(screenSurface,0,0,screenWidth,screenHeight,screenPaddingSide,screenPaddingTop);
	//draw her name.
	FontSet(fnt_phoneNametag,c_black,fa_center,fa_top);
	draw_text(phoneWidth/2,namey,herName);
	//draw the responses.
	
	var selected = array_create(3,2);
	switch(responseState){
		case ResponseState.noSelectionMade:
			for(var i=0;i<array_length_1d(selected);++i){
				selected[i] = 0;	
			}
			break;
		case ResponseState.correct:
			selected[correctResponse] = 1
			break;
		case ResponseState.medium:
			if(correctResponse == 0){
				selected[1] = 1;	
			}
			else{
				selected[0] = 1;	
			}
			break;
		case ResponseState.wrong:
			selected[2] = 1;
			break;
	}
	
	
	PhoneDrawResponseMessage(phoneWidth/2,firstResponsey,response[0],responseKey[0],selected[0]);
	PhoneDrawResponseMessage(phoneWidth/2,secondResponsey,response[1],responseKey[1],selected[1]);
	PhoneDrawResponseMessage(phoneWidth/2,thirdResponsey,response[2],-1,selected[2]);
surface_reset_target(); // finish drawing to the phone.

var rx = (dcos(-direction)*phoneWidth/2)-(dsin(-direction)*phoneHeight/2);
var ry = (dsin(-direction)*phoneWidth/2)+(dcos(-direction)*phoneHeight/2);
draw_surface_ext(phoneSurface,x-rx,y-ry,1,1,direction,c_white,1);
//test zone
//draw the last pressed key.
draw_sprite(spr_replyKeys,lastKeyPressed,0,0);
