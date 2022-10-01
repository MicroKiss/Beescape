display_set_gui_size(1080, 1920);

draw_sprite(sprCoin, 0, sprite_get_width(sprCoin), 200);
draw_set_font (fntUI);
draw_set_halign (fa_left);
draw_set_valign (fa_middle);
draw_text(sprite_get_width (sprCoin) + 50,200,string (levelScore));

