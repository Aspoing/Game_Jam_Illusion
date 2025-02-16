move_x = 0;
move_y = 0;

isAlive = true;

move_speed = 0.6;
move_direction = 0;

frame_x = 0;
frame_y = 0;
anim_speed = 6 / room_speed;

// Créer
bbox_width = 32;  // Largeur de la boîte de collision
bbox_height = 32; // Hauteur de la boîte de collision

cooldown_timer = 0;  // Initialise le cooldown à 0 (pas de cooldown au début)
cooldown_duration = room_speed * 13;  // 13 secondes de cooldown

game_timer = room_speed * 120;  // 2 minutes, room_speed = 60, donc 120 secondes

sprite_index = spr_player_idle;

enum CHARACTER_STATE {IDLE, WALK}
state = CHARACTER_STATE.IDLE;

nearest_action = noone

global.collectibles_collected = 0;  // Initialiser le compteur de collectibles