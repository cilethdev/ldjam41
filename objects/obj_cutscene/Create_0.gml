/// @description 
scene_info	= -1;
scene = 0;
timer = 0;

//fade
fade	= -1;
fadeTarget = 0;
fadeStarted = false;

//text
textStarted = false;
text = "";
textCopy = "";
charNum = 0;
textT	= -1;

/*example setup 
scene_info = [
	[cutscene_fade_out,0],
	[cutscene_text_random_fill,"PRESENTING",5,0.5],
	[cutscene_wait,2],
	[cutscene_text_in,"A GAME BY\n@CilethDev & @SwordnStallion",5,0.5],
	[cutscene_wait,2],
	[cutscene_fade_in,4],
	[cutscene_wait,4]
]
*/