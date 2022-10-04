IncreasePoints (gainedPoints);
if (gainedPoints > 0 )
	PlayAudio (sndBonusZone);
call_cancel(handle1);
if (handle2 != noone)
	call_cancel(handle2);