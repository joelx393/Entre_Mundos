if(!inicio && global.fim_jogo)
{
	global.pausa = true;
	//obj_player.image_index = spr_player_movendo;
	obj_player.image_speed = 1;
	
	
	if(obj_player.x >= 470 && obj_player.x <= 472)
	{	
		obj_player.sprite_index = spr_player_parado;
		obj_player.image_xscale = -1;
		//Cena 7
		if(global.cena_7)
		{
			//Criar dialogo
			var _dia = instance_create_layer(x, y, "dialogo", obj_dialogo);
	
			//Passar qual é o dialogo
			_dia.nome = "final";
			
			_dia.tem_tutorial = false;
			
			global.cena_7 = false;
			
			inicio = true;
		}
		
	}
	else if(obj_player.x < 471)
	{
		obj_player.image_xscale = 1;
		obj_player.sprite_index = spr_player_movendo;
		obj_player.x += 0.5;
	}
	else if(obj_player.x > 471)
	{
		obj_player.image_xscale = -1;
		obj_player.sprite_index = spr_player_movendo;
		obj_player.x -= 0.5;
	}
}
else if(global.mais)
{
	
	if(obj_player.x < 548)
	{
		obj_player.image_xscale = 1;
		obj_player.sprite_index = spr_player_movendo;
		obj_player. image_speed = 1;
		obj_player.x += 0.5;
	}
	else
	{
		obj_player.image_xscale = 1;
		obj_player.sprite_index = spr_player_parado;
		
		if(cont > 0)
		{
			cont--;
		}
		else
		{
			global.pausa = false;
			room_goto(Room_final);
		}
		
	}
}
else if(inicio && !instance_exists(obj_dialogo))
{
	if(!instance_exists(obj_dialogo) && !instance_exists(obj_dtr))
	{
		if(instance_exists(obj_player))
		{
			instance_create_layer(obj_player.x, obj_player.y - 10, "player", obj_dtr);
		}
	}
	
	if(contador > 0)
	{
		contador--;
	}
	else
	{
		if(!instance_exists(obj_monstro_vertical))
		{
			var _mon = instance_create_layer(obj_dtr.x - 10, -10, "player", obj_monstro_vertical);
			_mon.vel = 7;
		}
	}
	
}



