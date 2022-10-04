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
		global.highScore = val;
	}
}
