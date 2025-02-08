// Décompte du timer
timer -= 1;

if (timer <= 0) {
    instance_destroy();  // Détruire l'instance après 2 secondes
}
