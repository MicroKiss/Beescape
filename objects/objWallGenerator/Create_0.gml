SpawnWalls ();
wallSpawner = time_source_create (time_source_game, startingWallInterval, time_source_units_seconds, SpawnWalls, [], -1);
bonusZoneSpawner = time_source_create (time_source_game, startingBonusZoneInterval, time_source_units_seconds, SpawnBonusZone, [], -1);

time_source_start (wallSpawner);
time_source_start (bonusZoneSpawner);