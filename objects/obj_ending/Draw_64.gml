/// @description
FontSet(fnt_ending,c_white,fa_left,fa_bottom);
var thanks =
"00BOYFRIEND WAS MADE BY:\n" +
"CODE: PATRICK HILL @CilethDev & ARON HOMMAS\n"+
"ART: SAM BRAGG @SwordNStallion\n"+
"MUSIC: TRISTAN DENIET\n"+
"SOUND FX: PATRICK HILL & TRISTAN DENIET\n"+
"SCRIPT: AMY WATANABE & AVA CORREA & ARON HOMMAS";
draw_text(16,guih-16,thanks);


//Thanks
if (!delay) {
	FontSet(fnt_ending,c_white,fa_right,fa_bottom);
	draw_text_transformed(guiw-8,guih-8,"PRESS 'ESC' TO EXIT",0.5,0.5,0);
}