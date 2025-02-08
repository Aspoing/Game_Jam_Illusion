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

if (isAlive == true) {
	draw_sprite_part(sprite_index, 0, frame_x * _cs, floor(frame_y) * _cs, _cs, _cs, x, y);
}

if (isAlive == false) {
	draw_text(x, y, "Sniper Won");
}

// Dessiner la barre de cooldown
var bar_width = 20;  // Largeur de la barre
var bar_height = 20;  // Hauteur de la barre
var bar_x = 10;  // Position X de la barre
var bar_y = 245;  // Position Y de la barre

// Calculer le pourcentage du cooldown restant
var cooldown_percent = cooldown_timer / cooldown_duration;

// Dessiner le fond de la barre (en gris)
draw_set_color(c_gray);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Dessiner la barre de cooldown (en rouge)
draw_set_color(c_red);
draw_rectangle(bar_x, bar_y, bar_x + (bar_width * cooldown_percent - 1), bar_y + bar_height, false);

// Dessiner le texte indiquant les secondes restantes
draw_set_color(c_white);
if (cooldown_timer == 0) draw_text(bar_x + (bar_width / 2 - 5), bar_y, "E")
else draw_text(bar_x + (bar_width / 2 - 9), bar_y, string(ceil(cooldown_timer / room_speed)))

draw_text(10, 10, "Collectibles: " + string(global.collectibles_collected));  // Afficher le compteur de collectibles
