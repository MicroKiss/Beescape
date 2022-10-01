/// @function           IncreasePoints(val);
/// @param {real}  val  amount
/// @description        increases objScore levelScore value

function IncreasePoints (val = 1)
{
	if (!instance_exists (objScore))
		throw ("no score object");
		
    objScore.levelScore += val;
	if ((objScore.levelScore mod 5) == 0) {
		
		var reainingTime = time_source_get_time_remaining (objWallGenerator.spawner);
		time_source_stop (objWallGenerator.spawner);
		var iD = call_later (reainingTime, time_source_units_seconds, function () {
		objWallGenerator.spawnWalls ();
		var newDelay = max (1, time_source_get_period(objWallGenerator.spawner) - 0.2);
		time_source_reconfigure (objWallGenerator.spawner,
		newDelay,
		time_source_units_seconds, objWallGenerator.spawnWalls,[],-1);
		time_source_start (objWallGenerator.spawner);
	});
	}
}

function SaveHighScore (val) 
{
	if (val > global.highScore) {
		var saveFile = file_text_open_write (global.saveLocation);
		file_text_write_real (saveFile, val);
		file_text_close (saveFile);
	}
}
