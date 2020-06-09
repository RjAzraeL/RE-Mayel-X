if (place_meeting(x,y,obj_mayel))
{
	if (instance_number(obj_mayel) != 0)
	{
		instance_destroy();
		obj_mayel.tipo = 3;
		with (obj_mayel)
		{
			HerramientaMartillo = obj_herramienta_martillo_blanco;
			sprite_martilloactual = spr_herramienta_martillo_blanco;
			scr_set_mayel(tipo);
		}
	}
}