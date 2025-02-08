global.MS_button_left_pressed = mouse_check_button_pressed(mb_left);

if (global.MS_button_left_pressed) {
	munitions -= 1;
}

show_debug_message(munitions);