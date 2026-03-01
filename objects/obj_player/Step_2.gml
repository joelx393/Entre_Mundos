if(!global.pausa)
{
	//Testando colisão horizontal
	if (place_meeting(x + vel_h, y, obj_colissor))
	{
		while (!place_meeting(x + sign(vel_h), y, obj_colissor))
		{
			x += sign(vel_h);
		}
	
		vel_h = 0;
	}


	//Testando colisão vertical
	if (place_meeting(x, y + vel_v, obj_colissor))
	{
		while (!place_meeting(x, y + sign(vel_v), obj_colissor))
		{
			y += sign(vel_v);
		}
	
		vel_v = 0;
	}

	if(!global.trava)
	{
		x += vel_h;
		y += vel_v;
	}
}