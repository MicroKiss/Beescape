if (objWallGenerator.wallsPassed < 10)
	return;
var color = c_white;

if (objWallGenerator.wallsPassed >= 50) 
	color = choose(c_aqua, c_lime, c_fuchsia, c_orange);
else if (objWallGenerator.wallsPassed >= 40) 
	color = c_red;
else if (objWallGenerator.wallsPassed >= 30) 
	color = c_blue;
else if (objWallGenerator.wallsPassed >= 20) 
	color = c_yellow;

var xDiff = choose (-10, -5, 0, 5, 10);
var size = 10;// choose (-1, 0, 1);

if (current_time - lastParticle > 200) {
	lastParticle = current_time;
	for ( var i = 0; i < room_width ; i+= 16)
		effect_create_above(ef_smokeup, i, room_height/*objPlayer.y*/, size, color);
}