if (obj_gun.munitions >= 1) {
	isAlive = false;
	audio_play_sound(snd_dead, 1, false);
	move_speed = 0;
}


