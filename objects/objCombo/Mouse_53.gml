comboCounter += 1;
lastClick = current_time;

if (comboCounter mod 100 == 0) {
	IncreasePoints (comboCounter / 10);
	effect_create_above (ef_firework, x, y, 1, c_yellow);
}