if (comboCounter < 3)
	return;
display_set_gui_size(1080, 1920);

draw_sprite(sprCombo, 0, room_width / 2 - sprite_get_width(sprCombo), y);
draw_set_font (fntUI);
draw_set_halign (fa_left);
draw_set_valign (fa_middle);
draw_text(room_width / 2, y, string (comboCounter));