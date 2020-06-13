#region Gravedad
vspeed += global.gravedad;
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
		instance_destroy();
	}
	else 
	{
		instance_destroy();
		arma.modo = 1;
	}
}
#endregion
#region Estirar
scr_estirar();
#endregion