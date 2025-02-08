if (!fade_out) {
    // Décompte initial du timer
    timer -= 1;

    if (timer <= 0) {
        fade_out = true;  // Commencer le fade out après 2 secondes
    }
} else {
    // Diminuer l'alpha progressivement pendant 1 seconde (fade out)
    fade_timer -= 1;
    alpha_value = lerp(1, 0, 1 - (fade_timer / room_speed));

    // Lorsque le fade est terminé, détruire l'instance
    if (fade_timer <= 0) {
        instance_destroy();  // Détruire après le fade-out
    }
}
