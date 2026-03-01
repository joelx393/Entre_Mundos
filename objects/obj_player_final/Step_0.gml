if(!instance_exists(obj_fade) && !segunda && global.cena_8)
{
	if(x < 172)
	{
		sprite_index = spr_player_movendo;
		image_speed = 1;
		x += 1;
	}
	else
	{
		sprite_index = spr_player_parado;
		segunda = true;
	}
	
}
else if(segunda && !terceira)
{
	
	if(cont > 0) 
	{
		if(!audio_is_playing(teclado))
		{
			audio_play_sound(teclado,1,0,1,0);
		}
		cont--;
		
	}
	else
	{
		audio_stop_sound(teclado);
		
		//Cena final
		if(global.cena_8)
		{
			//Criar dialogo
			var _dia = instance_create_layer(x, y, "dialogo", obj_dialogo);
	
			//Passar qual é o dialogo
			_dia.nome = "fim";
			
			_dia.tem_tutorial = false;
			
			global.cena_8 = false;	
			terceira = true;
		}
	}
		
}
else if(!global.cena_8 && !instance_exists(obj_dialogo) && terceira)
{
	image_xscale = -1;
	sprite_index = spr_player_movendo;
	if(x > -100)
	{
		x -= 0.5;
	}
	
	if(!instance_exists(obj_fade_out))
	{
		instance_create_layer(x,y,"dialogo",obj_fade_out);
	}
	
}