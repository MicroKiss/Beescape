/// @function           IncreasePoints(val);
/// @param {real}  val  amount
/// @description        increases objScore levelScore value

function IncreasePoints (val = 1)
{
	if (!instance_exists (objScore))
		throw ("no score object");
		
    objScore.levelScore += val;
	objWallGenerator.fallSpeed = objWallGenerator.startingFallSpeed + objScore.levelScore * 10;
	objPlayer.spd = objPlayer.startingSpd + objScore.levelScore * 5;

	if ((objScore.levelScore mod 5) == 0) {
		
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
}


function SaveHighScore (val) 
{
	if (val > global.highScore) {
		var saveFile = file_text_open_write (global.saveLocation);
		file_text_write_real (saveFile, val);
		file_text_close (saveFile);
	}
}
