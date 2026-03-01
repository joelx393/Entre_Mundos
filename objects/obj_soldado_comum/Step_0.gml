switch(estado)
{
	case "patrulhando":
	//Estado normal de patrulha do inimigo
	patrulha();
	
	checando();
	
	//Condição de saida do estado
	if(viu_player)
	{
		estado = "duvida"
	}
	
	break;
	
	case "duvida":
	
	duvida();
	checando();
	
	//Condição de saida do estado
	if(!viu_player)
	{
		if(dir == 0) {vel = vel_original;}
		else if(dir == 1) {vel = -vel_original;}
		
		contador = 0;
		if(instance_exists(duvi)) {instance_destroy(duvi);}
		estado = "patrulhando";
		
	}
	
	break;
}

//Desenhando botão de acão em cima do alvo
if(botao_acao)
{
	if(!instance_exists(obj_acao))
	{
		botao = instance_create_layer(x, y - sprite_get_height(sprite_index) - 5,"Instances",obj_acao);
		botao.dono_id = id;
	}
}
else
{
	if(instance_exists(obj_acao))
	{
		instance_destroy(botao);
	}
	
}