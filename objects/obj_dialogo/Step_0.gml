if(!inicializar)
{
	scr_textos();
	
	inicializar = true;
}

if(keyboard_check_pressed(ord("E")) && !tutorial)
{
	if(pagina < array_length(texto) - 1)
	{
		pagina++;
	}
	else
	{
		if(tem_tutorial)
		{
			tutorial = true;
		}
		else
		{
			if(room == Room_3_2 && nome == "segundo_monstro")
			{
				global.trava_medidor = false;
			}
			global.trava = false;
			instance_destroy();
		}
	}
}
else if(keyboard_check_pressed(ord("E")) && tutorial)
{
		if(tuto_cont < array_length(tuto_spr) -1)
		{
			tuto_cont++;
		}
		else
		{
			global.trava = false;
			instance_destroy()
		}
}


