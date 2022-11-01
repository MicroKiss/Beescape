IncreasePoints (gainedPoints);
if (gainedPoints > 0 )
	PlayAudio (sndBonusZone, false);

time_source_destroy (deathTimer1);


if (deathTimer2 != noone)
	time_source_destroy(deathTimer2);