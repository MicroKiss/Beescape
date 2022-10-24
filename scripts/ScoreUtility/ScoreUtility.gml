/// @function           IncreasePoints(val);
/// @param {real}  val  amount
/// @description        increases objScore levelScore value

function IncreasePoints (val)
{
	if (instance_exists (objScore)) 
		objScore.levelScore += val;
	else
		show_debug_message("nowhere to store score");
}


function SaveHighScore (val) 
{
	if (val > global.highScore) {
		global.highScore = val;
	}
}
