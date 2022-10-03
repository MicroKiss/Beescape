image_index = value;
if (position_meeting(mouse_x, mouse_y, self)) {
	if (value)
		image_index = 3;
	else
		image_index = 2;
	
	if(mouse_check_button_released(mb_left))
		event_user(0);
}