if(audio_is_playing(global.musica))
{
	audio_stop_sound(global.musica);
}
global.musica = snd_floresta;
audio_play_sound(global.musica,1,1);

