if(global.fim_sala[corrente_1] && global.fim_sala[corrente_2])
{
	instance_destroy();
}

if(matar)
{
	if(contador > 0)
	{
		contador--;
	}
	else
	{
		audio_stop_sound(snd_choque);
		scr_restart();
	}
}

