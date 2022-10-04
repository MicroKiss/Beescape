display_set_gui_size(1080, 1920);

SaveFontState ();
draw_set_font (fntDebug);
draw_set_color (c_black);

var debugInfo = [];
if (instance_exists(objWallGenerator)) {
	array_push (debugInfo, ["wallSpawnRem",time_source_get_time_remaining(objWallGenerator.wallSpawner)])
	array_push (debugInfo, ["wallSpawnPer",time_source_get_period(objWallGenerator.wallSpawner)])
	array_push (debugInfo, ["fallSpeed",objWallGenerator.fallSpeed])
	array_push (debugInfo, ["wallsPassed",objWallGenerator.wallsPassed])
}
if (instance_exists(objPlayer)) {
	array_push (debugInfo, ["playerSpeed",objPlayer.spd])
}

var lineCount = array_length(debugInfo);
var startingY = room_height / 2 - (lineCount / 2)*lineHeight;
for (var i=0; i < lineCount;i++) {
  draw_text(40,startingY + i*lineHeight, debugInfo[i][0] + ": " + string (debugInfo[i][1]));
}

RestoreFontState ();