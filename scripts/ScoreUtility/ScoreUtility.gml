/// @function           IncreasePoints(val);
/// @param {real}  val  amount
/// @description        increases objScore levelScore value

function IncreasePoints (val)
{
	objScore.levelScore += val;
}


function SaveHighScore (val) 
{
	if (val > global.highScore) {
		var saveFile = file_text_open_write (global.saveLocation);
		file_text_write_real (saveFile, val);
		file_text_close (saveFile);
	}
}
