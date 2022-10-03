if (current_time - lastClick > 1000) {
	comboCounter = 0;
	comboColor = c_white;
}

if (comboCounter >= 500) 
	comboColor = c_black;
else if (comboCounter >= 400) 
	comboColor = c_red;
else if (comboCounter >= 300) 
	comboColor = c_purple;
else if (comboCounter >= 200) 
	comboColor = c_blue;
else if (comboCounter >= 100) 
	comboColor = c_yellow;
