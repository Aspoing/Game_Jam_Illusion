move_x = 0;
move_y = 0;

move_speed = 1;
move_direction = 0;

frame_x = 0;
frame_y = 0;
anim_speed = 6 / room_speed;

sprite_index = spr_player_idle;

enum CHARACTER_STATE {IDLE, WALK}
state = CHARACTER_STATE.IDLE;

nearest_action = noone