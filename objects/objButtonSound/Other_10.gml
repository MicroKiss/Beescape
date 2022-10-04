// Inherit the parent event
event_inherited();

global.sounds = value;

if (global.sounds) {
	PlayAudio (sndMenuMusic);
} else {
	audio_stop_all ();
}