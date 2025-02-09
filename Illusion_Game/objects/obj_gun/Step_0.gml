global.MS_button_left_pressed = mouse_check_button_pressed(mb_left);

if (global.MS_button_left_pressed) and (munitions > 0) {
	munitions -= 1;
}

if (munitions <= 0) {
    show_message("Victoire du ninja ! Le sniper a tiré toutes ses balles !");
    game_end();  // Terminer le jeu après la victoire
}

show_debug_message(munitions);