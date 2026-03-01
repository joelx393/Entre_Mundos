if(!global.trava)
{
	if(instance_exists(obj_player))
	{
		if(x < obj_player.x)
		{
			x += vel;
			image_xscale = -1;
			dir = 0;
		}
		else
		{
			x -= vel;
			image_xscale = 1;
			dir = 1;
		}
	}

	if(dir == 0)
	{
		if(!place_meeting(x + 40, y + 1, obj_colissor))
		{
			instance_destroy();
		}
	}
	else if(dir == 1)
	{
		if(!place_meeting(x - 40, y + 1, obj_colissor))
		{
			instance_destroy();
		}
	}
	
	if(place_meeting(x,y,obj_destroi_monstro))
	{
		instance_destroy();
	}

	//Matando Jogador
	if(place_meeting(x,y,obj_player))
	{
		global.trava = true;
				
		var _cam = view_camera[0];

		var _meio_x = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
		var _meio_y = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;
	
		if(!instance_exists(obj_boca))
		{
			instance_create_layer(_meio_x, _meio_y,"dialogo",obj_boca);
		}
	}
}


if(global.troca)
{
	instance_destroy();
}





