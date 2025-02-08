if (obj_gun.munitions >= 1) {
	audio_play_sound(PnjDead, 1, false);
	instance_destroy();
}

