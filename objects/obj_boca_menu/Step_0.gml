if(global.ani)
{
	image_speed = 1;
	
	if(image_index >= image_number -1)
	{
		room_goto(Room_1);
	}
}
else
{
	if(image_index >= 10)
	{
		modi = -0.3;
	}
	else if(image_index <= 1)
	{
		modi = 0.3;
	}
	
	image_index += modi;
}
