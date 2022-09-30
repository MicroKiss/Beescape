call_later (time_source_get_time_remaining(objWallGenerator.spawner) + 0.1,
	time_source_units_seconds, function () {
		var newDelay = max (1, time_source_get_period(objWallGenerator.spawner) - 0.2);
		if (newDelay != 1)
			objWallGenerator.spd += 20; 
		time_source_reconfigure (objWallGenerator.spawner,
		newDelay,
		time_source_units_seconds, objWallGenerator.spawnWalls,[],-1);
		time_source_start (objWallGenerator.spawner);
	}
);

instance_destroy();