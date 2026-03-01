camera_set_view_size(view_camera[0],global.view_largura,global.view_altura);

if(instance_exists(view_alvo))
{
	var _x1 = view_alvo.x - global.view_largura / 2;
	var _y1 = view_alvo.y - global.view_altura / 2;
	
	_x1 = clamp(_x1,0, room_width - global.view_largura);
	_y1 = clamp(_y1,0, room_height - global.view_altura);
	
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
	
	camera_set_view_pos(view_camera[0], lerp(_cx,_x1, view_spd), lerp(_cy,_y1, view_spd));
}









