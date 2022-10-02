function SpawnWalls () {
	var spawnY = -10;
	var margin = sprite_get_width (sprPlayer) * 2;
	var spawnX = random_range (margin, room_width - margin);
	var halfWallSize = sprite_get_width (sprWall) / 2;
	
	var halfHoleSize = sprite_get_width (sprPlayer) * 2.5;
	instance_create_depth (spawnX - halfHoleSize - halfWallSize, spawnY, 0, objWall);
	instance_create_depth (spawnX + halfHoleSize + halfWallSize, spawnY, 0, objWall);

	var inst = instance_create_depth (spawnX, spawnY - sprite_get_height (sprWall) - sprite_get_height (sprPlayer) / 2, 0, objPoint);
	with (inst) {
		image_xscale = 2* halfHoleSize / sprite_width;
	}
}

function SpawnBonusZone () {
	var spawnY = room_height - sprite_get_height (sprBonusZone) / 2;
	var spawnX = random_range (sprite_get_width (sprBonusZone), room_width - sprite_get_width (sprBonusZone));
	
	instance_create_depth (spawnX, spawnY, 0, objBonusZone);

}