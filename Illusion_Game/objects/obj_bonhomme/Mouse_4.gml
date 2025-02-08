if (obj_gun.munitions >= 1) {
	instance_destroy();
}

audio_play_sound(PnjDead, 1, false);
