total_duration = room_speed * 3;  // 3 secondes au total
blink_timer = 0;  // Compte à rebours pour chaque clignotement
alpha_value = 1;  // Le rectangle est opaque au départ

blink_sequence = [];  // Liste des durées de clignotement (en frames)

// Ajouter un long clignotement de 1 seconde (60 frames)
array_push(blink_sequence, room_speed);

// Ajouter plusieurs petits clignotements aléatoires pour le reste du temps
var remaining_time = total_duration - room_speed;  // Temps restant après le long clignotement
while (remaining_time > 0) {
    // Générer des clignotements de durée entre 0.1s et 0.5s (6 à 30 frames)
    var blink_duration = irandom_range(room_speed * 0.1, room_speed * 0.5);
    array_push(blink_sequence, blink_duration);
    remaining_time -= blink_duration;
}

current_blink_index = 0;  // Index pour parcourir les clignotements
blink_timer = blink_sequence[current_blink_index];  // Premier clignotement
is_visible = true;  // Le rectangle est visible au début
