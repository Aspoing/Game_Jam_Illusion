// Dessiner un rectangle semi-transparent qui couvre tout l'écran
draw_set_alpha(1);  // Opacité (1 = opaque, 0 = transparent)
draw_set_color(c_black);  // Couleur noire
draw_rectangle(0, 0, room_width, room_height + 10, false);  // Dessiner le rectangle couvrant l'écran
draw_set_alpha(1);  // Réinitialiser l'alpha après dessin