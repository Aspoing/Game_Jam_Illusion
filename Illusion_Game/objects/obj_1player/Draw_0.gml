var _cs = 16;

switch (state) {
	case CHARACTER_STATE.IDLE : sprite_index = spr_player_idle; break;
	case CHARACTER_STATE.WALK : sprite_index = spr_player_walk; break;
}

if (state == CHARACTER_STATE.IDLE) or (state == CHARACTER_STATE.WALK) {
	if (x_direction == -1) frame_x = 2;
	else if (x_direction == 1) frame_x = 3;
	else if (y_direction == -1) frame_x = 1;
	else if (y_direction == 1) frame_x = 0;
}

if (state == CHARACTER_STATE.WALK) {
	var _animLength = 4;
	if (floor(frame_y + anim_speed) <= _animLength - 1) frame_y += anim_speed;
	else frame_y = 0
} else {
	frame_y = 0;
}
draw_sprite_part(sprite_index, 0, frame_x * _cs, floor(frame_y) * _cs, _cs, _cs, x, y);