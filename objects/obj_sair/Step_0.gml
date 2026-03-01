if(clicado)
{
	if(contador > 0)
	{
		contador--;
	}
	else
	{
		audio_stop_sound(click);
		game_end();
	}
}

