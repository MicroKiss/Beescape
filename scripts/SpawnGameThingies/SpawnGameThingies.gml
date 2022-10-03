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

function SpawnBonusZone () 
{
	var spawnY = room_height - sprite_get_height (sprBonusZone) / 2;
	var spawnX = random_range (sprite_get_width (sprBonusZone), room_width - sprite_get_width (sprBonusZone));
	
	instance_create_depth (spawnX, spawnY, 0, objBonusZone);

}


function IncreasePlayerSpeed () 
{
	if (!instance_exists (objPlayer)) {
		show_debug_message ("ERROR: objPlayer");
	}
	if (!instance_exists (objWallGenerator)) {
		show_debug_message ("ERROR: objWallGenerator");
	}
	objPlayer.spd = objPlayer.startingSpd + objWallGenerator.wallsPassed * 5;
}


function IncreaseFallSpeed () 
{
	if (!instance_exists (objWallGenerator)) {
		show_debug_message ("ERROR: objWallGenerator");
	}
	objWallGenerator.fallSpeed = objWallGenerator.startingFallSpeed + objWallGenerator.wallsPassed * 10;
}


function ReconfigureWallSpawner () 
{
	if (!instance_exists (objScore)) {
		show_debug_message ("ERROR: objScore");
	}
	if (!instance_exists (objWallGenerator)) {
		show_debug_message ("ERROR: objWallGenerator");
	}

	var reainingTime = time_source_get_time_remaining (objWallGenerator.wallSpawner);
	time_source_stop (objWallGenerator.wallSpawner);
	var iD = call_later (reainingTime, time_source_units_seconds, function () {
	SpawnWalls ();
	var newDelay = max (1, time_source_get_period(objWallGenerator.wallSpawner) - 0.2);
	time_source_reconfigure (objWallGenerator.wallSpawner,
	newDelay,
	time_source_units_seconds, SpawnWalls, [], -1);
	time_source_start (objWallGenerator.wallSpawner);
	});
	
}