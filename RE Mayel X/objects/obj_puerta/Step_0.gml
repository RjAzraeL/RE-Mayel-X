if (instance_number(obj_mayel) != 0)
{
	if (distance_to_object(obj_mayel)<2)
	{
		if (obj_mayel.estado == "Cayendo" and obj_mayel.image_index == 0)
		{
			if (obj_mayel.tiene_llave > 0)
			{
				obj_mayel.tiene_llave--;
				instance_destroy();
				scr_sonido(snd_puerta_abierta);
			}
		}
	}
}