if (position_meeting(mouse_x, mouse_y, self)) {
	image_index = 1;
} else {
	image_index = 0;
}



if(mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, self))
	event_user(0);