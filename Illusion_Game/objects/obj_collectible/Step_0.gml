// Étape
// On vérifie si le joueur entre en collision avec le collectible

if (place_meeting(x, y, obj_1player)) {
	audio_play_sound(snd_collect, 1, false);
    instance_destroy();  // Supprimer l'instance du collectible une fois ramassé
    
    // Optionnel : Ajouter des points ou déclencher une action spéciale
    global.collectibles_collected += 1; // Incrémenter le compteur global
}
