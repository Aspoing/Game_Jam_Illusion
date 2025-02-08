move_timer += 1;
age_factor += 0.001; // Augmente légèrement au fil du temps

if (state == "move") {
    // Déplacement
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);

    // Vérifie si l'IA sort de la fenêtre et ajuste la position si nécessaire
    if (x < 0) { x = 0; direction = irandom_range(90, 270); } // Si elle sort à gauche
    if (x > room_width) { x = room_width; direction = irandom_range(90, 270); } // Si elle sort à droite
    if (y < 0) { y = 0; direction = irandom_range(0, 180); } // Si elle sort en haut
    if (y > room_height) { y = room_height; direction = irandom_range(0, 180); } // Si elle sort en bas

    // Quand on a atteint le temps de déplacement, on passe en pause
    if (move_timer >= move_delay) {
        state = "pause";
        move_timer = 0;
        speed = 0; // Arrête le mouvement

        // Change progressivement le temps de pause
        pause_delay = base_pause_delay + irandom_range(-10, 30) + age_factor * 20;
    }
} 
else if (state == "pause") {
    // Quand le temps de pause est écoulé, reprendre le mouvement
    if (move_timer >= pause_delay) {
        state = "move";
        move_timer = 0;
        speed = 1; // Redonne une vitesse
        direction = irandom(360); // Nouvelle direction aléatoire

        // Change progressivement le temps de déplacement
        move_delay = base_move_delay + irandom_range(-20, 40) - age_factor * 15;
    }
}
