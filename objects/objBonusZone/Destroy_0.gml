IncreasePoints (gainedPoints);
if (gainedPoints > 0 )
	audio_play_sound(sndBonusZone, 10, false);
call_cancel(handle1);
if (handle2 != noone)
	call_cancel(handle2);