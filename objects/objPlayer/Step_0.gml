//for testing
//x = mouse_x;
x += dir*spd*global.deltaTime;


if (global.warpMovement) {
	if (x < -sprite_width/2)
		x = room_width+sprite_width/2;
	else if (x > room_width+sprite_width/2)
		x = -sprite_width/2;
} else {
	if (x < 0) {
		x = 1;
		dir = 1;
	} else if (x > room_width) {
		x = room_width - 1;
		dir = -1;
	}
}


