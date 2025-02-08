move_x = 0;
move_y = 0;

move_speed = 0.6;
move_direction = 0;

frame_x = 0;
frame_y = 0;
anim_speed = 6 / room_speed;

sprite_index = spr_player_idle;

x_direction = irandom(2) - 1
y_direction = irandom(2) - 1

alarm[0] = room_speed * irandom(3);

state = CHARACTER_STATE.IDLE;

move_timer = 0;
base_move_delay = irandom_range(60, 180); // Temps de déplacement initial
base_pause_delay = irandom_range(30, 90); // Temps de pause initial
move_delay = base_move_delay;
pause_delay = base_pause_delay;