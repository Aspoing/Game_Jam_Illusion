if (state == CHARACTER_STATE.IDLE) {
	if (x_direction != 0) or (y_direction != 0 ) {
		state = CHARACTER_STATE.WALK;
	}
}

if (x < 0) {
	x = room_width;
} // Si elle sort à gauche
if (x > room_width) {
	x = 0;
} // Si elle sort à droite
if (y < 0) {
	y = room_height;
} // Si elle sort en haut
if (y > room_height) {
	y = 0;
}

if (state == CHARACTER_STATE.WALK ) {
	move_direction = point_direction(x, y, x + x_direction, y + y_direction);

	move_x = lengthdir_x(move_speed, move_direction);
	move_y = lengthdir_y(move_speed, move_direction);

	if (move_x != 0) or (move_y != 0 ) {
		x += move_x;
		y += move_y;
	} else {
		state = CHARACTER_STATE.IDLE;
	}	
}

if (state == CHARACTER_STATE.WALK ) {
	if (x_direction == 0) and (y_direction == 0) {
		state = CHARACTER_STATE.IDLE;
	}
}