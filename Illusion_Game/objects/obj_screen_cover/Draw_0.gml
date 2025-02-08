draw_set_alpha(alpha_value);  // Utiliser la valeur d'alpha
draw_set_color(c_black);  // Couleur noire
draw_rectangle(0, 0, room_width, room_height + 10, false);  // Couvre toute la room
draw_set_alpha(1);  // Réinitialiser l'alpha après dessin
