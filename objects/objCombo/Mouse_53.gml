comboCounter += 1;
lastClick = current_time;
comboAngle = -20 + (comboCounter mod 100) / 100 * 40;
	
if (comboCounter mod 100 == 0) {
	IncreasePoints (comboCounter / 10);
	audio_play_sound(sndCombo, 10, false);

	for (var i = 0; i < 5; ++i) {
		var xDiff = random(256) - 128;
		var yDiff = random(64) - 32;
		var color = choose (c_red, c_yellow);
		effect_create_above (ef_firework, x + xDiff, y + yDiff, 10, color);
	}
}