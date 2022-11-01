if (place_meeting(x,y,objPlayer)) {
	image_alpha = 0.9;
	
	if (deathTimer2 == noone) {
		deathTimer2 = time_source_create(time_source_game, 0.1, time_source_units_seconds, function ()
			{if (image_xscale > 0.1) image_xscale -= 0.02;},[],-1);
		time_source_start(deathTimer2); 
	}
	
	if (current_time - lastTime	< periodTime)
		return;
	lastTime = current_time;

	gainedPoints += bonusPointPerPeriod; 
	var xDiff = random (64) - 32;
	var yDiff = random (64) - 32;
	var color = choose (c_yellow, c_green, c_white);
	effect_create_above(ef_star, objPlayer.x + xDiff, objPlayer.y + yDiff, 1, color);
} else {
	image_alpha = 0.5;
}