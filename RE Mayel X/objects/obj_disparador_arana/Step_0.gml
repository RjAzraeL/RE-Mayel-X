carga++;
if (carga >= carga_tope)
{
	carga = 0;
	image_index = 0;
	if (instance_number(obj_mayel) != 0)
	{
		if (distance_to_object(obj_mayel)<200)
		{
			instance_create_depth(x,y,0,obj_disparador_bala_arana);
		}
	}
}
if (instance_number(obj_mayel) != 0)
{
	if (distance_to_object(obj_mayel)<200)
	{
		if (carga >= 80 and carga < carga_tope)
		{
			image_index = 1;
		}
	}
}