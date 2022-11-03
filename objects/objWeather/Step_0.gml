if (current_time - lastEffect < 100)
	return;
	
	
var size = irandom (3);
switch (mode) {
    case 0:
        effect_create_below(ef_snow, x, y, size, c_white);
        break;
    case 1:
        effect_create_below(ef_snow, x, y, size, c_red);
        break;
    case 2:
        effect_create_below(ef_snow, x, y, size, c_green);
        break;
    default:
        // code here
        break;
}
mode = (mode +1 ) % 3;
lastEffect = current_time;