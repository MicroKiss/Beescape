global.font = noone;
global.alpha = noone;
global.color = noone;
global.valign = noone;
global.halign = noone;

function SaveFontState(){
	global.font = draw_get_font ();
	global.alpha = draw_get_alpha ();
	global.color = draw_get_color ();
	global.valign = draw_get_valign ();
	global.halign = draw_get_halign ();
}

function RestoreFontState(){
	if (global.font == noone)
		throw ("Error");
	draw_set_font (global.font);
	draw_set_alpha (global.alpha);
	draw_set_color (global.color);
	draw_set_valign (global.valign);
	draw_set_halign (global.halign);
}