if(place_meeting(x, y -1, obj_player) && global.cena_5)
{
	//Criar dialogo
	var _dia = instance_create_layer(x, y, "dialogo", obj_dialogo);
	
	//Passar qual é o dialogo
	_dia.nome = "lodo";
			
	_dia.tem_tutorial = false;
			
	global.cena_5 = false;	
			
	instance_destroy();
			
}


