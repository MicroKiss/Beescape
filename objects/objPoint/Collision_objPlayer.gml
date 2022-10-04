IncreasePoints (pointValue);
objWallGenerator.wallsPassed += 1;
PlayAudio (sndWallScore, false);
IncreaseFallSpeed ();
IncreasePlayerSpeed ()

if (objWallGenerator.wallsPassed mod 5 == 0)
	ReconfigureWallSpawner ();

for (var i = 0; i < 3 ;++i) {
	var randX = random(sprite_width) - sprite_width / 2;
	var randY = random(sprite_height / 2) - sprite_height / 4;
	effect_create_below(ef_star, x + randX, y + randY, 1, c_yellow);
}
instance_destroy();