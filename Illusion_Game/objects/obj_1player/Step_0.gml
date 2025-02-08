var left = keyboard_check(vk_left) or keyboard_check(ord("Q"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var up = keyboard_check(vk_up) or keyboard_check(ord("Z"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));

x_direction = right - left
y_direction = down - up

// Si le cooldown est actif, diminuer le cooldown timer
if (cooldown_timer > 0) {
    cooldown_timer -= 1;
}

// Si le joueur appuie sur E et que le cooldown est terminé
if (keyboard_check_pressed(ord("E")) and cooldown_timer <= 0) {
    // Créer l'objet qui cache l'écran
    instance_create_layer(0, 0, "Illusion_ability", obj_screen_cover);
	audio_play_sound(snd_lightning, 1, false);
	audio_play_sound(snd_sizzling, 1, false);

    // Réinitialiser le cooldown
    cooldown_timer = cooldown_duration;
}

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

if (x < 0) {
	x = room_width;
}
if (x > room_width) {
	x = 0;
}
if (y < 0) {
	y = room_height;
}
if (y > room_height) {
	y = 0;
}