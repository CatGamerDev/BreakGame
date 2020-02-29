if (go == false) {
	audio_play_sound(snd_Click, 1, false);
	
	direction = random_range(45, 135);
	speed = spd;
	go = true;
}
