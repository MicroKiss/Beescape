draw_self ();

SaveFontState();
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color (c_black);
draw_text(x-sprite_width, y, text);
RestoreFontState();