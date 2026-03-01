//Velocidade de movimento
vel = 0.5;
vel_original = 0.5;

//Botões de acao em cima da cabeça do inimigo
botao_acao = false;
botao = noone;

//Contador para matar o player
cont = 30;

cont_tiro = 30;

//Direção do inimigo
dir = 0;

//Estados do inimigo
estado = "patrulhando";

//Alcance de visão do inimigo
alcance_visao = 200;

viu_player = false;

//Contador até o inimigo atirar no player
contador = 0;
limite_contador = 120;
duvi = noone;


function patrulha()
{
	//Descidindo direção
	if(place_meeting(x + vel, y, obj_colissor))
	{
		vel = -vel;
	}

	if(!place_meeting(x + vel, y + 1, obj_colissor))
	{
		vel = - vel;
	}
	
	//Pegando direção do inimigo
	{
		//0 = direita 1 = esquerda
		if(vel > 0) {dir = 0;}
		else if (vel < 0) {dir = 1;}
	}

	//Mudando sprite
	if(dir == 1){image_xscale = 1;}
	else {image_xscale = -1;}

	//Movendo
	x += vel;
}

function duvida()
{
	vel = 0;
	if(!instance_exists(duvi))
	{
		duvi = instance_create_layer(x, y - sprite_height - 5, "Instances", obj_duvida);
	}
	
	contador++;
	
	//Pegou o player
	if(contador >= limite_contador)
	{
		duvi.image_index = 1;
		image_speed = 0;
		global.pausa = true;
		
		if(instance_exists(obj_caixa_setas))
		{
			instance_destroy(obj_caixa_setas);
			instance_destroy(obj_setas);
		}
		
		if(cont > 0)
		{
			cont--;
		}
		else
		{
			obj_player.image_blend = c_red;
			//Toca o som de tiro
			if(!audio_is_playing(tiro))
			{
				audio_play_sound(tiro,1,0);
			}
			if(cont_tiro > 0) {cont_tiro--;}
			else
			{
				obj_player.image_blend = c_white;
				if(audio_is_playing(tiro))
				{
					audio_stop_sound(tiro);
				}
				//Quando o som terminar
				scr_restart();
			}
		}

		
		
		
	}
	
	if(obj_player.x > x) {dir = 0}
	else if(obj_player.x < x) {dir = 1}
	
	//Mudando sprite
	if(dir == 1){image_xscale = 1;}
	else {image_xscale = -1;}
	
}

function checando()
{
	if(obj_player.x < x && dir == 1 || obj_player.x > x && dir == 0)
	{
		// Primeiro: checa distância
		if (point_distance(x, y, obj_player.x, obj_player.y) <= alcance_visao)
		{
		    // Depois: checa se existe parede no meio
		    if (!collision_line(x, y - 5, obj_player.x, obj_player.y - 5, obj_colissor, false, true))
		    {
		        viu_player = true;
		    }
		    else
		    {
		        viu_player = false;
		    }
		}
		else
		{
		    viu_player = false;
		}
	}

}