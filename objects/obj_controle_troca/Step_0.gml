if(!global.pausa)
{
	if(global.troca)
	{	
		
		_pitch = random_range(2,3);
		audio_play_sound(troca,1,0,1,0,_pitch);
		
		if(instance_exists(obj_player))
		{
			instance_destroy(obj_player);
		}
	
		var _play = instance_create_layer(global.pos_x_player,global.pos_y_player, "player", obj_player);
		_play.vel_h = global.vel_h;
		_play.vel_v = global.vel_v;
		
		if(instance_exists(obj_monstro))
		{
			instance_destroy(obj_monstro);
			
			var _mon = instance_create_layer(global.mon_x,global.mon_y, "player", obj_monstro);
		}

	
		global.troca = false;
	}
}

