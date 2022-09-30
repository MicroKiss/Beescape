
x = mouse_x;
//x += dir*spd*global.deltaTime;



if (x < -sprite_width/2)
	x = room_width+sprite_width/2;

if (x > room_width+sprite_width/2)
	x = -sprite_width/2;