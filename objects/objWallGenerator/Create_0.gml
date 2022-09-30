self.spawnWalls = function () 
{
	var spawnY = 0;
	var spawnX = random (room_width - 100);
	var halfWallSize = sprite_get_width (sprWall) / 2;
	
	var halfHoleSize = sprite_get_width (sprPlayer) * 2;
	instance_create_depth (spawnX - halfHoleSize - halfWallSize, spawnY, 0, objWall);
	instance_create_depth (spawnX, spawnY - sprite_get_height (sprPoint), 0, objPoint);
	instance_create_depth (spawnX + halfHoleSize + halfWallSize, spawnY, 0, objWall);
}


self.spawner = time_source_create (time_source_game, 3, time_source_units_seconds, self.spawnWalls,[],-1);

time_source_start (self.spawner);