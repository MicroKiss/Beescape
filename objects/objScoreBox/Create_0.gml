image_speed = 0;
image_alpha = 0.7;
if (global.lastScore != -1)
	text = "previous run: " + string (global.lastScore);
else 
	text = "high score: " + string (global.highScore);

PauseGame ();