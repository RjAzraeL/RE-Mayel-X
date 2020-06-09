#region Gravedad
if (image_xscale < 0)
{
	hspeed -= global.gravedad;
}
if (image_xscale > 0)
{
	hspeed += global.gravedad;
}
#endregion
#region Golpe
if (place_meeting(x,y,par_arma))
{
	var arma = instance_place(x,y,par_arma);
	if (arma.x<x)
	{
		direccion_arma = -1;
	}
	if (arma.x>x)
	{
		direccion_arma = 1;
	}
	if (arma.object_index == obj_herramienta_martillo_blanco)
	{
		instance_destroy();
	}
	if (arma.object_index != obj_herramienta_boomerang)
	{
		instance_destroy(arma);
	}
	else 
	{
		instance_destroy();
		arma.modo = 1;
	}
}
#endregion
#region Estirar
scr_estirar_horizontal();
#endregion
#region Direccion
if (loading == 0)
{
	loading = 1;
	if (image_xscale < 0)
	{
		gravity_direction = 180;
	}
	if (image_xscale > 0)
	{
		gravity_direction = 0;
	}
}
#endregion