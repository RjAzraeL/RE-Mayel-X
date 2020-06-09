if (place_meeting(x,y,obj_mayel))
{
	if (instance_number(obj_mayel) != 0)
	{
		instance_destroy();
		obj_mayel.tipo = 1;
		with (obj_mayel)
		{
			scr_set_mayel(tipo);
		}
	}
}