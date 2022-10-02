if (levelTotalscore < 10)
	return;
	
var color = c_white;

if (levelTotalscore >= 50) 
	color = choose(c_aqua, c_lime, c_fuchsia, c_orange);
else if (levelTotalscore >= 40) 
	color = c_red;
else if (levelTotalscore >= 30) 
	color = c_blue;
else if (levelTotalscore >= 20) 
	color = c_yellow;

var xDiff = choose (-10, -5, 0, 5, 10);
var size = choose (-1, 0, 1);
effect_create_below(ef_smokeup, objPlayer.x + xDiff, objPlayer.y, size, color);
