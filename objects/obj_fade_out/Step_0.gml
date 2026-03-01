if(contador > 0)
{
	contador--;
}
else
{
	if (fade_alpha < 1) 
	{
	    fade_alpha += fade_speed;
	}
	else
	{
		fade_alpha = 1;
		//instance_destroy();
		room_goto(Menu);
	}
	
}


