image_alpha = 0.5;
 
deathTimer1 = time_source_create(time_source_game, lifeSpan, time_source_units_seconds, function ()
 {instance_destroy ()});

time_source_start(deathTimer1); 

if (global.xmasTheme) {
	image_blend = c_red;
	textColor = c_red;
}