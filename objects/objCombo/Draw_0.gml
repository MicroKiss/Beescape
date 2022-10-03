if (comboCounter >= 10 && (current_time - lastParticle >= 60)) {

	lastParticle = current_time;
	var xDiff = choose (-10, -5, 0, 5, 10);
	var size = choose (-1, 0, 1);

	effect_create_below(ef_ring, random(room_width), random(room_height), size, comboColor);
}

if (comboCounter >= 3) {

	SaveFontState ();
	draw_set_color (comboColor);
	var rectangleX = x -20;
	var rectangleY = y - 150;
	var rectangleWidth = 60;
	var rectangleHeight = 250;

	draw_roundrect(rectangleX,rectangleY + rectangleHeight * (100- comboCounter mod 100) /100,rectangleX + rectangleWidth,rectangleY + rectangleHeight, false);
	draw_line_width(rectangleX,rectangleY,rectangleX,rectangleY + rectangleHeight, 5);
	draw_line_width(rectangleX + rectangleWidth,rectangleY,rectangleX + rectangleWidth,rectangleY + rectangleHeight, 5);

	draw_set_font (fntUI);
	draw_set_halign (fa_left);
	draw_set_valign (fa_middle);
	var xx = lengthdir_x(rectangleWidth * 3, comboAngle);
	var yy = lengthdir_y(rectangleWidth * 3, comboAngle);
	draw_text_transformed(x + xx / 2, y + yy, string (comboCounter),1,1,comboAngle);

	RestoreFontState ();
}