global.saveLocation = working_directory  + "saveData.dat";
global.saveVersion = 1;

global.deltaTime = 0;
global.gamePaused = false;
global.lastScore = -1;


function InitGlobals() {
	global.highScore = 0;
	global.warpMovement = true;
	global.sounds = true;
	global.deviceWidth = display_get_width();
	global.deviceHeight = display_get_height();
	
	var success = true;
	if file_exists(global.saveLocation) {
		var saveFile = file_text_open_read (global.saveLocation);
		var saveVer = file_text_read_real(saveFile);
		
		if (saveVer != global.saveVersion) 
			success = false;
		
		if (success) {
			global.highScore = file_text_read_real(saveFile);
			global.warpMovement = file_text_read_real(saveFile);
			global.sounds = file_text_read_real(saveFile);
		}

		file_text_close(saveFile);
	} 
}


function SaveGlobals ()
{
	var saveFile = file_text_open_write (global.saveLocation);
	file_text_write_real (saveFile, global.saveVersion);
	file_text_write_real (saveFile, global.highScore);
	file_text_write_real (saveFile, global.warpMovement);
	file_text_write_real (saveFile, global.sounds);
		
	file_text_close (saveFile);
}