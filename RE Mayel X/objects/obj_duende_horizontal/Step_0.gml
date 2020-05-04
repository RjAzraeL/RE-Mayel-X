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
if (estirar == 1)
{
	image_y+= 0.02;
	if (hspeed == 0)
	{
		estirar = 2;
	}
}
if (estirar == 2)
{
	if (image_y > 0)
	{
		image_y-= 0.02;
	}
}
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