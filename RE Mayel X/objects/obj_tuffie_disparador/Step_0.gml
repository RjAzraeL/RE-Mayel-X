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
	}
	else 
	{
		arma.modo = 1;
	}
}
#endregion
#region Estirar
scr_estirar();
#endregion
#region Disparar
alarma++;
if (alarma == 80)
{
	image_index = 1;
}
if (alarma >= 100)
{
	image_index = 0;
	alarma = 0;
	var bala = instance_create_depth(x,y,-5,obj_disparador_bala);
	bala . hspeed = 5;
	bala . vspeed = -5;
	bala . chocar = 1;
	bala = instance_create_depth(x,y,-5,obj_disparador_bala);
	bala . hspeed = -5;
	bala . vspeed = -5;
	bala . chocar = 1;
}
#endregion