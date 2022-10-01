
if file_exists(global.saveLocation) {
	var saveFile = file_text_open_read (global.saveLocation);
	global.highScore = file_text_read_real(saveFile)
	file_text_close(saveFile);
} else {
	global.highScore = 0;
}