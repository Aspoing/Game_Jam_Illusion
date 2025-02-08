blink_timer -= 1;

// Si le timer d'un clignotement est écoulé
if (blink_timer <= 0) {
    is_visible = !is_visible;  // Basculer l'état visible/invisible

    // Passer au clignotement suivant
    current_blink_index += 1;

    // Si nous avons épuisé tous les clignotements, détruire l'instance
    if (current_blink_index >= array_length(blink_sequence)) {
        instance_destroy();  // Effet terminé après 3 secondes
    } else {
        // Réinitialiser le timer pour le prochain clignotement
        blink_timer = blink_sequence[current_blink_index];
    }
}
