draw_self ();


if (gainedPoints > 0 ) {
	SaveFontState ();

	draw_set_font (fntUI);
	draw_set_color (c_yellow);
	draw_set_halign (fa_center);
	draw_set_valign (fa_middle);
	draw_set_alpha (0.7);
	draw_text_transformed(x,y,string (gainedPoints),2,3,-30);

	RestoreFontState ();
}