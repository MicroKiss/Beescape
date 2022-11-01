if (time_source_exists(wallSpawner))
	time_source_destroy (wallSpawner);
if (time_source_exists(bonusZoneSpawner))
	time_source_destroy (bonusZoneSpawner);
if (time_source_exists(timerDelay))
	time_source_destroy (timerDelay);