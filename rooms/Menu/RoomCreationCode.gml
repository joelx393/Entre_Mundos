if(audio_is_playing(global.musica))
{
	audio_stop_sound(global.musica);
}
global.musica = snd_respiracao_monstro;
audio_play_sound(global.musica,1,1,1,1,0.5);


//Resetando todas as variavies globais

//Animação menu
global.ani = false;

//Travar poder de troca
global.trava_medidor = false;

//Controle de cenas
global.cena_1 = true;
global.cena_2 = true;
global.cena_3 = true;
global.cena_4 = true;
global.cena_5 = true;

global.cena_6 = true;

global.cena_7 = true;
global.cena_8 = true;

//Fim Fim Fim
global.mais = false;

//Variaveis de cada sala

//Sala_1
global.fim_sala[0] = false;

//Sala 2
global.fim_sala[1] = false;
global.fim_sala[2] = false;
global.fim_sala[3] = false;

//Sala 3
global.fim_sala[4] = false;

//Sala 4
global.fim_sala[5] = false;
global.fim_sala[6] = false;
global.fim_sala[7] = false;

//Sala 5
global.fim_sala[8] = false;
global.fim_sala[9] = false;
global.fim_sala[10] = false;
global.fim_sala[11] = false;
global.fim_sala[12] = true;
