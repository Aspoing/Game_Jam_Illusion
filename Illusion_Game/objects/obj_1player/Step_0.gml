var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

x_direction = right - left
y_direction = down - up

if (state == CHARACTER_STATE.IDLE) {
	if (x_direction != 0) or (y_direction != 0 ) {
		state = CHARACTER_STATE.WALK;
	}
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

var _npc 