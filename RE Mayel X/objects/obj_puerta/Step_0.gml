#region Funcion llave
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
#endregion
#region Sprite
if (carga != 0)
{
	image_speed = 0;
	image_index = 0;
	sprite_index = spr_puerta;
	carga--;
}
else 
{
	if (image_speed == 0)
	{
		image_speed = 1.5;
		sprite_index = choose(spr_puerta,spr_puerta1,spr_puerta2,spr_puerta3);
	}
}
#endregion