if (place_meeting(x,y,obj_mayel))
{
	if (instance_number(obj_mayel) != 0)
	{
		instance_destroy();
		if (global.MartilloBlanco == 0)
		{
			global.MartilloBlanco = 1;
			with (obj_mayel)
			{
				HerramientaMartillo = obj_herramienta_martillo_blanco;
				sprite_martilloactual = spr_herramienta_martillo_blanco;
			}
		}
	}
}