display_set_gui_size(1080, 1920);

draw_sprite(sprScore, 0, sprite_get_width(sprScore), y);
draw_set_font (fntUI);
draw_set_halign (fa_left);
draw_set_valign (fa_middle);
draw_text(sprite_get_width (sprScore) + 50, y, string (levelScore + levelBonusScore));

