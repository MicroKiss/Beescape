if (comboCounter < 10)
	return;
	
if (current_time - lastParticle < 60)
	return;
lastParticle = current_time;
var xDiff = choose (-10, -5, 0, 5, 10);
var size = choose (-1, 0, 1);

var color = c_white;
if (comboCounter >= 500) 
	color = c_black;
else if (comboCounter >= 200) 
	color = c_red;
else if (comboCounter >= 150) 
	color = c_purple;
else if (comboCounter >= 100) 
	color = c_blue;
else if (comboCounter >= 50) 
	color = c_yellow;

effect_create_below(ef_ring, random(room_width), random(room_height), size, color);

