if(!global.pausa)
{
	if(!global.trava_medidor)
	{
		if(image_index >= image_number - 1)
		{
			image_speed = 0;
			global.medidor = true;
		}
		else
		{
			image_speed = 1;
		}
	}
	else
	{
		image_speed = 0;
	}

}

