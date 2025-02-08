if (image_index == 1) {
	audio_play_sound(snd_explosion, 10, false);	
}

if (image_index > image_number - 1) {
	//audio_stop_sound(snd_explosion);
	instance_destroy();	
}