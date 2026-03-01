if(!global.pausa)
{
	if(!global.fim_sala[numero])
	{
		//Botão de interação
		var _e = keyboard_check_pressed(ord("E"));
	
		//Criando botão de ação em cima do mecanismo
		if(place_meeting(x,y,obj_player))
		{
			if(!instance_exists(acao) && !instance_exists(caixa))
			{
				acao = instance_create_layer(x, y - sprite_height - 5, "Instances", obj_acao);
				acao.dono_id = id;
			}
		}
		else
		{
			if(instance_exists(acao))
			{
				instance_destroy(acao);
			}
		}
	
		//Interagindo
		if(place_meeting(x,y, obj_player))
		{
			if(!instance_exists(caixa) && _e)
			{
				if(instance_exists(acao))
				{
					instance_destroy(acao);
				}
			
				var _cam = view_camera[0];

				var _meio_x = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
				var _meio_y = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;

				caixa = instance_create_layer(_meio_x, _meio_y, "dialogo", obj_caixa_setas);
				caixa.image_xscale = tamanho;
			
				global.trava = true;
				combi = true;
			}
			else if(instance_exists(caixa) && _e)
			{
				instance_destroy(caixa);
				if(instance_exists(obj_acao))
				{
					instance_destroy(obj_acao);
				}
				instance_destroy(obj_setas);
				global.trava = false;
				combi = false;
			}
		
		}
		else
		{
			if(instance_exists(caixa))
			{
				instance_destroy(caixa);
			}

		}
	
		if(combi)
		{
			randomize();
		
			for(var _i = 0; _i <= tamanho; _i++)
			{
				var num = irandom_range(0,3);
				lista[_i] = num;
			}
		
			var _pos_x = caixa.x - caixa.sprite_width/2 - 15;
			var _pos_y = caixa.y + 2;
		
			for(var _i = 0; _i <= tamanho; _i++)
			{
				
				var _seta = instance_create_layer(_pos_x + ((30 + tamanho -2) * (_i + 1)), _pos_y, "setas", obj_setas);
				_seta.image_index = lista[_i];
			
			}
		
			combi = false;
			teste = true;

		}
	
		if(teste)
		{
			var _baixo, _cima, _esquerda, _direita;
		
			_baixo = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
			_cima = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
			_direita = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
			_esquerda = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
		
			if(_baixo)
			{
				lista_de_teste[contador] = 1;
				contador++;
				tocou = false;
			}
			else if(_cima)
			{
				lista_de_teste[contador] = 0;
				contador++;
				tocou = false;
			}
			else if(_esquerda)
			{
				lista_de_teste[contador] = 3;
				contador++;
				tocou = false;
			}
			else if(_direita)
			{
				lista_de_teste[contador] = 2;
				contador++;
				tocou = false;
			}
			
			if(array_length(lista_de_teste) > 0)
			{
				for(var _i = 0; _i < contador; _i++)
				{
					if(lista[_i] == lista_de_teste[_i])
					{
						//Acertou
						if(!tocou)
						{
							if(audio_is_playing(correto))
							{
								audio_stop_sound(correto)
							}
								audio_play_sound(correto,1,0,1);
								tocou = true;
						}

					}
					else
					{
						//Errou
						audio_play_sound(errado,1,0,1,0);
						instance_destroy(caixa);
						instance_destroy(obj_setas);
						global.trava = false;
						combi = false;
						contador = 0;
						teste = false;
						caixa = noone;
						acao = noone;
						lista = [];
						lista_de_teste = [];
					}
				}
				
				//Acertou toda a combinação
				if(contador == tamanho + 1)
				{
					audio_play_sound(sucesso,1,0);
					image_index = 1;
					instance_destroy(caixa);
					instance_destroy(obj_setas);
					global.trava = false;
					
					if(!choque)
					{
						if(instance_exists(link))
						{
							link.image_speed = 1;
						}
					}

						
					global.fim_sala[numero] = true;
				}
			}
		
		}
	
	}
	else
	{
		image_index = 1;
	}
	
}




