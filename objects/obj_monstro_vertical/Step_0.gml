if(!morto)
{
	y += vel;
}
else
{
	image_speed = 1;
}

if(place_meeting(x,y + 1, obj_colissor))
{
	morto = true;
}


if(image_index == image_number -1)
{
	instance_destroy();
}

if(place_meeting(x,y,obj_player))
{
	global.trava = true;
				
	var _cam = view_camera[0];

	var _meio_x = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
	var _meio_y = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;
	
	if(!instance_exists(obj_boca))
	{
		instance_create_layer(_meio_x, _meio_y,"dialogo",obj_boca);
	}
}

if(place_meeting(x,y, obj_dtr))
{
	if(instance_exists(obj_dtr))
	{
		instance_destroy(obj_dtr);
		global.mais = true;
	}
}
