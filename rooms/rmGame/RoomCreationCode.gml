audio_stop_all ();
PlayAudio (sndGameMusic, true);
global.gamePaused = false;

if (global.xmasTheme) {
	var layId = layer_get_id("Background");
	var backId = layer_background_get_id(layId);
	layer_background_sprite(backId, sprBackGroundXmas);
	instance_create_depth(0,0,0,objWeather);
}