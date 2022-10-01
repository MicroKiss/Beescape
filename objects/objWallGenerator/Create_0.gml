self.spawnWalls = function () 
{
	var spawnY = 0;
	var spawnX = random_range (sprite_get_width (sprPlayer), room_width - sprite_get_width (sprPlayer));
	var halfWallSize = sprite_get_width (sprWall) / 2;
	
	var halfHoleSize = sprite_get_width (sprPlayer) * 2.5;
	instance_create_depth (spawnX - halfHoleSize - halfWallSize, spawnY, 0, objWall);
	instance_create_depth (spawnX + halfHoleSize + halfWallSize, spawnY, 0, objWall);

	var inst = instance_create_depth (spawnX, spawnY - sprite_get_height (sprWall) - sprite_get_height (sprPlayer) / 2, 0, objPoint);
	with (inst) {
		image_xscale = 2* halfHoleSize / sprite_width;
	}
}

spawnWalls ();
spawner = time_source_create (time_source_game, startingInterval, time_source_units_seconds, self.spawnWalls,[],-1);

time_source_start (self.spawner);