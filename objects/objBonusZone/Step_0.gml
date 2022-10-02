if (place_meeting(x,y,objPlayer)) {
	image_alpha = 0.9;
	if (current_time - lastTime	< 200)
		return;

	lastTime = current_time;

	objScore.levelBonusScore += bonusPoint; 
	var xDiff = random (64) - 32;
	var yDiff = random (64) - 32;
	var color = choose (c_yellow, c_green, c_white);
	effect_create_above(ef_star, objPlayer.x + xDiff, objPlayer.y + yDiff, 1, color);
} else {
	image_alpha = 0.5;
}