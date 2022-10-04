// Inherit the parent event
event_inherited();

global.sounds = value;

if (global.sounds) {
	PlayAudio (sndMenuMusic, false);
} else {
	audio_stop_all ();
}