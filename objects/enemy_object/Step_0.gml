if (instance_exists(player_object)){
	move_towards_point(player_object.x, player_object.y, spd);
}

image_angle = direction;

if (hp <= 0){
	with (score_object) thescore = thescore + 5;
	audio_sound_pitch(death_sound,random_range(0.5,1.5));
	audio_play_sound(death_sound,0,0);
	instance_destroy();
}