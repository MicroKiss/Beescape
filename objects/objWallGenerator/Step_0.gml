fallSpeed = startingFallSpeed + objScore.levelScore * 10;

with (objWall)
	y += other.fallSpeed*global.deltaTime;
with (objPoint)
	y += other.fallSpeed*global.deltaTime;
