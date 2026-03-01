if(contador > 0)
{
	contador--;
}
else
{
	if (fade_alpha > 0) 
	{
	    fade_alpha -= fade_speed;
	}
	else
	{
		fade_alpha = 0;
		global.fade[numero] = false;
		instance_destroy();
	}
	
}


