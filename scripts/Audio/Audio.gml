function PlayAudio(audio, loop = false)
{
    if (global.sounds)
		audio_play_sound (audio, 10, loop);
}