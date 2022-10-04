function PlayAudio(audio, loop)
{
    if (global.sounds)
		audio_play_sound (audio, 10, loop);
}