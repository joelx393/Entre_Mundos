if(!global.pausa)
{
	if(!global.trava)
	{		
		image_speed = 1;
	
		//Inputs
		var _direita, _esquerda, _cima, _baixo, _pulo, _troca, _tiro;

		//Movimento
		_direita = keyboard_check(ord("D"));
		_esquerda = keyboard_check(ord("A"));
		_cima = keyboard_check_pressed(ord("W"));
		_baixo = keyboard_check(ord("S"));

		//_tiro = keyboard_check_pressed(ord("K"));

		//_pulo = keyboard_check_pressed(ord("J"));

		//Macanicas
		_troca = keyboard_check_pressed(vk_space);

		//Criando velocidade horizontal
		vel_h = (_direita - _esquerda) * vel;

		//Confere se o objeto está no chao
		var _chao = place_meeting(x, y + 1, obj_colissor);
		
		//Liberando final do jogo
		if(_chao && place_meeting(x, y, obj_final))
		{
			global.fim_jogo = true;
		}
		

		if(!_chao)
		{
			coiote--;
		}
		else
		{
			coiote = coiote_max;
		}

		//Aplicando Gravidade/ Pulo
		if(!_chao && coiote <= 0)
		{
			vel_v += grav;
		}
		else
		{
			if(_cima)
			{
					vel_v = forca_pulo;
			}
		}

		//Trocando sprite
		if(vel_h != 0)
		{
			sprite_index = spr_player_movendo;
		}
		else
		{
			sprite_index = spr_player_parado;
			if(dir == 1) {image_xscale = -1;}
			else if(dir == 0) {image_xscale = 1;}
		}

		//Mudando direção jogador
		if(_direita)
		{
			//Direita
			dir = 0;
			image_xscale = 1;
		}
		else if(_esquerda)
		{
			//Esquerda
			dir = 1;
			image_xscale = -1;
		}


		#region Teste de Visão

		// guarda máscara original
		var mascara_original = mask_index;

		// troca para máscara visual
		mask_index = sprite_teste;

		var qtd = instance_place_list(x, y, obj_colissor, lista_paredes, false);

		if (qtd > 0)
		{
		    var total_overlap = 0;
		    var player_area = (bbox_right - bbox_left) * (bbox_bottom - bbox_top);
			var margem = 1; // tolerância de 1 pixel

		    for (var i = 0; i < qtd; i++)
		    {
		        var parede = lista_paredes[| i];

		        var overlap_left   = max(bbox_left,   parede.bbox_left);
		        var overlap_right  = min(bbox_right,  parede.bbox_right);
		        var overlap_top    = max(bbox_top,    parede.bbox_top);
		        var overlap_bottom = min(bbox_bottom, parede.bbox_bottom);
        
		        var overlap_w = overlap_right - overlap_left;
		        var overlap_h = overlap_bottom - overlap_top;

		        if (overlap_w > margem && overlap_h > margem)
		        {
		            total_overlap += overlap_w * overlap_h;
		        }
		    }

		    if (total_overlap > 0)
		    {
		        if (total_overlap >= player_area - margem)
		            estado_parede = 2; // totalmente dentro
		        else
		            estado_parede = 1; // parcialmente dentro
		    }
		}

		// restaura máscara original
		mask_index = mascara_original;

		#endregion

		/*if(estado_parede = 2)
		{
			sprite_index = noone;
			sumida = true;
		}
		else
		{
			if(sumida)
			{
				sprite_index = spr_player_parado;
				sumida = false;
			}
			
		}*/

		#region Furtividade

		if(_baixo)
		{
			vel = vel_furtivo;
		}
		else
		{
			vel = vel_original;
		}

		#endregion

		#region Ataque 
		
		/*
		//Pega o id do inimigo mais proximo
		var _alvo = instance_nearest(x,y,obj_entidade_inimigo);

		//Verifica se existe um alvo
		if(_alvo != noone)
		{
			var _dist = point_distance(x,y,_alvo.x,_alvo.y)
	
			if(_dist <= 20)
			{
				ataque = true;
				_alvo.botao_acao = true;
			}
			else
			{
				ataque = false;
				_alvo.botao_acao = false;
			}
		}*/
		#endregion

		//Poder de troca
		if(_troca && global.medidor == true)
		{
			if(instance_exists(obj_monstro))
			{
				//Salvando posição do monstro
				global.mon_x = obj_monstro.x;
				global.mon_y = obj_monstro.y;
			}
			
			global.pos_x_player = x;
			global.pos_y_player = y;
			
			global.vel_h = vel_h;
			global.vel_v = vel_v;
	
			global.camera_x = camera_get_view_x(view_camera[0]);
			global.camera_y = camera_get_view_y(view_camera[0]);
		
			#region Escolhendo as room para trocar
			if(room == Room_1)
			{
				room_goto(Room_1_2);
			}
			else if(room == Room_1_2)
			{
				room_goto(Room_1);
			}
			else if(room == Room_2)
			{
				room_goto(Room_2_2);
			}
			else if(room == Room_2_2)
			{
				room_goto(Room_2);
			}
			else if(room == Room_3)
			{
				room_goto(Room_3_2);
			}
			else if(room == Room_3_2)
			{
				room_goto(Room_3);
			}
			else if(room == Room_4)
			{
				room_goto(Room_4_2);
			}
			else if(room == Room_4_2)
			{
				room_goto(Room_4);
			}
			else if(room == Room_5)
			{
				room_goto(Room_5_2);
			}
			else if(room == Room_5_2)
			{
				room_goto(Room_5);
			}
			
			
			
			#endregion
		
			global.troca = true;
		}
		
		#region Dialogo
		//Aplicar condições para o dialogo acontecer
		
		//Cena 1
		if(room == Room_1 && global.cena_1 && _chao)
		{
			//Criar dialogo
			var _dia = instance_create_layer(x, y, "dialogo", obj_dialogo);
	
			//Passar qual é o dialogo
			_dia.nome = "primeiro_dialogo";
			
			_dia.tem_tutorial = true;
			
			//termina a cena 1
			global.cena_1 = false;
			
		}
		
		//Cena 2 (Tutorial)
		if(room == Room_2 && global.cena_2)
		{
			//Criar dialogo
			var _dia = instance_create_layer(x, y, "dialogo", obj_dialogo);
	
			//Passar qual é o dialogo
			_dia.nome = "tutorial_visao";
			
			_dia.tem_tutorial = false;
			
			//termina a cena 1
			global.cena_2 = false;
			
		}
		
		//Cena 3 (Bug)
		if(room == Room_3_2 && global.cena_3 && _chao)
		{
			audio_play_sound(bug,1,0,1,0.1, 1.5);
			
			//Criar dialogo
			var _dia = instance_create_layer(x, y, "dialogo", obj_dialogo);
	
			//Passar qual é o dialogo
			_dia.nome = "primeiro_monstro";
			
			_dia.tem_tutorial = false;
			
			global.trava_medidor = true;
			global.cena_3 = false;		
		}
		
		//Cena 4 (Monstro)
		if(room == Room_3_2 && global.cena_4 && _chao && obj_player.x > 320)
		{
			audio_play_sound(monstro,1,0,1,1,0.5);
			layer_set_visible("tremor",true);
			//Criar dialogo
			var _dia = instance_create_layer(x, y, "dialogo", obj_dialogo);
	
			//Passar qual é o dialogo
			_dia.nome = "segundo_monstro";
			
			_dia.tem_tutorial = false;
			
			global.trava_medidor = true;
			global.cena_4 = false;	
		}
		
		//Cena 4 (Monstro)
		if(room == Room_5 && global.cena_6 && _chao)
		{
			//Criar dialogo
			var _dia = instance_create_layer(x, y, "dialogo", obj_dialogo);
	
			//Passar qual é o dialogo
			_dia.nome = "inicio_final";
			
			_dia.tem_tutorial = false;
			
			global.cena_6 = false;	
		}
		
		
		#endregion
		
		//Respiração do monstro
		if(instance_exists(obj_monstro) or instance_exists(obj_monstro_fase_4) or instance_exists(obj_monstro_vertical) or instance_exists(obj_monstro_horizontal) )
		{
			if(!audio_is_playing(snd_respiracao_monstro))
			{
				randomize();
				var _ini = random_range(1,4);
				
				audio_play_sound(snd_respiracao_monstro,1,1,1,_ini,0.5);
				if(layer_exists("tremor"))
				{
					layer_set_visible("tremor", true);
				}
			}
		}
		else
		{
			if(layer_exists("tremor"))
			{
				layer_set_visible("tremor", false);
			}
			audio_stop_sound(snd_respiracao_monstro);
		}
		

	}
	else
	{
		
		sprite_index = spr_player_parado;
		image_speed = 0;
	}
	
	
		#region Visão
		
		if(instance_exists(obj_duvida))
		{
			global.visivel = 2;
		}
		else if(estado_parede == 0)
		{
			global.visivel = 0;
		}
		else if(estado_parede == 1)
		{
			global.visivel = 0;
		}
		else if(estado_parede == 2)
		{
			global.visivel = 1;
		}
		
		#endregion
	
}
else 
{
	//image_speed = 0;
}