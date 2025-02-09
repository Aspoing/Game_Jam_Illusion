spawn_timer -= 1;

var _colletible = obj_cookie
if (spawn_timer <= 0) {
    // Générer une position aléatoire dans la room
    random_x = irandom_range(0, 480);
    random_y = irandom_range(0, 270);

    // Créer le collectible à la position aléatoire
	var random_collectible = irandom_range(0, 2);
	if (random_collectible == 0) _collectible = obj_cookie
	if (random_collectible == 1) _collectible = obj_fish
	if (random_collectible == 2) _collectible = obj_radis
    instance_create_layer(random_x, random_y, "Instances_1", _collectible);

    // Réinitialiser le spawn timer
    spawn_timer = room_speed * 8;  // Nouveau collectible après 3 secondes
}
