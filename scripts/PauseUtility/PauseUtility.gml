global.pauseScreenShot = -1;

function PauseGame() {
	global.gamePaused = true;
	global.midTransition = false;
	
	if (!sprite_exists (global.pauseScreenShot))
		global.pauseScreenShot = sprite_create_from_surface (application_surface, 0, 0, room_width, room_height, 0, 0, 0, 0);    
	//sprite_set_offset (global.pauseScreenShot, 0, 0);
	PauseTimers ();
	instance_deactivate_all (true);


}

function ContinueGame () {
	global.gamePaused = false;

	if(sprite_exists (global.pauseScreenShot))
		sprite_delete (global.pauseScreenShot);
	instance_activate_all ();
	ResumeTimers ();
}


function PauseTimers () {
	if (instance_exists (objBonusZone)) {
		if (time_source_exists(objBonusZone.deathTimer1))
			time_source_pause (objBonusZone.deathTimer1);
		if (time_source_exists(objBonusZone.deathTimer2))
			time_source_pause (objBonusZone.deathTimer2);
	}
	
	if (instance_exists (objWallGenerator)) {
		if (time_source_exists(objWallGenerator.wallSpawner))
			time_source_pause (objWallGenerator.wallSpawner);
		if (time_source_exists(objWallGenerator.bonusZoneSpawner))
			time_source_pause (objWallGenerator.bonusZoneSpawner);
	}
}

function ResumeTimers () {
	
	if (instance_exists (objBonusZone)) {
		if (time_source_exists(objBonusZone.deathTimer1))
			time_source_resume (objBonusZone.deathTimer1);
		if (time_source_exists(objBonusZone.deathTimer2))
			time_source_resume (objBonusZone.deathTimer2);
	}
	
	if (instance_exists (objWallGenerator)) {
		if (time_source_exists(objWallGenerator.wallSpawner))
			time_source_resume (objWallGenerator.wallSpawner);
		if (time_source_exists(objWallGenerator.bonusZoneSpawner))
			time_source_resume (objWallGenerator.bonusZoneSpawner);
	}
}