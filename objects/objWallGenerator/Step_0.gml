if (global.gamePaused)
	return;

with (objWall)
	y += other.fallSpeed*global.deltaTime;
with (objPoint)
	y += other.fallSpeed*global.deltaTime;
