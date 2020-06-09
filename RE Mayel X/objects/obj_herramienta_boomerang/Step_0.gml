#region Disparo
if (hacer == 0)
{
	hacer = 1;
	if (instance_number(creador))
	{
		if (creador.image_xscale < 0)
		{
			hspeed = -8;
		}
		if (creador.image_xscale > 0)
		{
			hspeed = 8;
		}
		tasa = -hspeed ;
	}
}
#endregion
#region Angulo
image_angle += tasa;
#endregion
#region Regreso
volver++;
if (volver >= 14)
{
	modo = 1;
}
if (modo == 1)
{
	if (instance_number(obj_mayel) != 0)
	{
		move_towards_point(obj_mayel.x,obj_mayel.y,10);
	}
}
if (place_meeting(x,y,obj_mayel) and modo == 1)
{
	instance_destroy();
}
#endregion
#region Recoleccion
scr_colision_destruccion(obj_moneda);
scr_colision_destruccion(obj_gema);
#endregion