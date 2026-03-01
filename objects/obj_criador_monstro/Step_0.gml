//Criando monstro baseado na variavel dinamica
if(local == 0)
{
	if(place_meeting(x,y, obj_player))
	{
		if(instance_exists(obj_monstro_fase_4))
		{
			instance_destroy(obj_monstro_fase_4);
		}
		
		var _mon = instance_create_layer(49, 90, "player", obj_monstro_fase_4);
		_mon.vel = 2;
		_mon.image_xscale = -1;
		
		instance_destroy();
	
	}
}
else if(local == 1)
{
	if(place_meeting(x,y, obj_player))
	{
		if(instance_exists(obj_monstro_fase_4))
		{
			instance_destroy(obj_monstro_fase_4);
		}
		
		var _mon = instance_create_layer(540, 177, "player", obj_monstro_fase_4);
		_mon.vel = 2;
		
		instance_destroy();
	
	}
}
else if(local == 2)
{
	if(place_meeting(x,y, obj_player))
	{
		if(instance_exists(obj_monstro_fase_4))
		{
			instance_destroy(obj_monstro_fase_4);
		}
		
		var _mon = instance_create_layer(400, 177, "player", obj_monstro_fase_4);
		_mon.vel = 3;
		
		instance_destroy();
	
	}
}
else if(local == 3)
{
	if(place_meeting(x,y, obj_player))
	{
		if(instance_exists(obj_monstro_fase_4))
		{
			instance_destroy(obj_monstro_fase_4);
		}
		
		var _mon = instance_create_layer(8, 494, "player", obj_monstro_fase_4);
		_mon.vel = 3;
		
		instance_destroy();
	
	}
}
else if(local == 4)
{
	if(place_meeting(x,y, obj_player))
	{
		if(instance_exists(obj_monstro_fase_4))
		{
			instance_destroy(obj_monstro_fase_4);
		}
		
		var _mon = instance_create_layer(350, 354, "player", obj_monstro_vertical);
		_mon.vel = 5;
		
		instance_destroy();
	
	}
}
else if(local == 5)
{
	if(place_meeting(x,y, obj_player))
	{
		
		var _mon = instance_create_layer(130, 229, "player", obj_monstro_vertical);
		_mon.vel = 4;
		
		instance_destroy();
	
	}
}
else if(local == 6)
{
	if(place_meeting(x,y, obj_player))
	{
		
		var _mon = instance_create_layer(29, 320, "player", obj_monstro_horizontal);
		_mon.vel = 4;
		
		instance_destroy();
	
	}
}
else if(local == 7)
{
	if(place_meeting(x,y, obj_player))
	{
		randomize();
		
		var _x = choose(57,521);
		
		var _mon = instance_create_layer(_x, 564, "player", obj_monstro_fase_4);
		_mon.vel = 3;
		
		instance_destroy();
	
	}
}
else if(local == 8)
{
	if(place_meeting(x,y, obj_player))
	{
		
		var _mon = instance_create_layer(47, 144, "player", obj_monstro_horizontal);
		_mon.vel = 4;
		
		instance_destroy();
	
	}
}
else if(local == 9)
{
	if(place_meeting(x,y, obj_player))
	{
		var _x = choose(153,544);
		
		var _mon = instance_create_layer(_x, 167, "player", obj_monstro_fase_4);
		_mon.vel = 2;
		
		instance_destroy();
	
	}
}