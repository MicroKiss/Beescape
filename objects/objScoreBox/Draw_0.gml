draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntUI);
draw_set_color (c_black);
draw_text_transformed(x,y - 30,text,1,1,image_angle)
draw_text_transformed(x,y + 60,"Tap here to start",1,1,image_angle)

draw_set_halign(fa_left);
draw_set_valign(fa_top);