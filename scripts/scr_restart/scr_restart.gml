function scr_restart()
{
	global.camera_x = camera_get_view_x(view_camera[0]);
	global.camera_y = camera_get_view_y(view_camera[0]);
	global.pausa = false;
	global.trava = false;
	global.trava_medidor = false;
	
	//Reinicia as variaveis dependendo da sala
	if(room == Room_1 || room == Room_1_2)
	{
		room_goto(Room_1);
		global.fim_sala[0] = false;

	}
	else if(room == Room_2 || room == Room_2_2)
	{
		room_goto(Room_2);
		global.fim_sala[1] = false;
		global.fim_sala[2] = false;
		global.fim_sala[3] = false;

	}
	else if(room == Room_3 || room == Room_3_2)
	{
		room_goto(Room_3);
		global.fim_sala[4] = false;

	}
	else if(room == Room_4 || room == Room_4_2)
	{
		room_goto(Room_4);
		global.fim_sala[5] = false;
		global.fim_sala[6] = false;
		global.fim_sala[7] = false;

	}
	else if(room == Room_5 || room == Room_5_2)
	{
		room_goto(Room_5);
		global.fim_sala[8] = false;
		global.fim_sala[9] = false;
		global.fim_sala[10] = false;
		global.fim_sala[11] = false;
		global.fim_sala[12] = true;
	}

}