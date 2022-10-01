if (levelScore < 10)
	return;
	
var color = c_white;

if (levelScore >= 50) 
	color = choose(c_aqua, c_lime, c_fuchsia, c_orange);
else if (levelScore >= 40) 
	color = c_red;
else if (levelScore >= 30) 
	color = c_blue;
else if (levelScore >= 20) 
	color = c_yellow;

var xDiff = choose (-10, -5, 0, 5, 10);
var size = choose (-1, 0, 1);
effect_create_below(ef_smokeup, objPlayer.x + xDiff, objPlayer.y, size, color);
