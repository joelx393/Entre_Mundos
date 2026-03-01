if(image_index == image_number -1)
{
	image_speed = 0;
	image_index = image_number -1;
}

if(global.fim_sala[numero] && image_index == image_number -1)
{
	if(place_meeting(x,y, obj_player))
	{
		
		/*if(!instance_exists(este))
		{
			var este = instance_create_layer(x, y - sprite_height/2, "setas", este);
			_seta.image_index = 0;
		}*/
		
		if(keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
		{
			room_goto(sala);
		}
	}
	else
	{
		/*if(instance_exists(este))
		{
			instance_destroy(este);
		}*/
	}
	

}


