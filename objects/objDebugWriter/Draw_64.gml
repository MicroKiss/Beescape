display_set_gui_size(1080, 1920);

if (instance_exists(objWallGenerator)) {
	draw_text (80,1880,string (time_source_get_time_remaining(objWallGenerator.wallSpawner)));
	draw_text (80, 1840, string (time_source_get_period(objWallGenerator.wallSpawner)));
	draw_text (80, 1800, string (objWallGenerator.fallSpeed));
}

if (instance_exists(objPlayer)) {
	draw_text (80, 1760, string (objPlayer.spd));
}