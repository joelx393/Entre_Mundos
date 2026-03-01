if(audio_is_playing(global.musica))
{
	audio_stop_sound(global.musica);
}
global.musica = snd_fundo_base;
randomize();
var _ini = random_range(1,60);
audio_play_sound(global.musica,1,1,1,_ini,0.5);


//Criando o Fade
if(global.fade[0])
{
	var _fad = instance_create_layer(0,0,"preto", obj_fade);
	_fad.numero = 0;
}