#region Gravedad
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
#region Disparar
if (escupiendo == 0)
{
	alarma++;
}
if (alarma == 250)
{
	image_index = 1;
}
if (alarma >= 270)
{
	if (escupiendo == 0)
	{
		escupiendo = 90;
	}
}
if (escupiendo > 1)
{
	escupiendo--;
	if (image_xscale > 0)
	{
		var bala = instance_create_depth(x,y,depth-1,obj_disparador_fuego_lanzallama);
		bala . hspeed = 4;
		bala . vspeed = random_range(-3,3);
		bala . chocar = 1;
		bala . limitado = 1;
	}
	if (image_xscale < 0)
	{
		bala = instance_create_depth(x,y,depth-1,obj_disparador_fuego_lanzallama);
		bala . hspeed = -4;
		bala . vspeed = random_range(-3,3);
		bala . chocar = 1;
		bala . limitado = 1;
	}
}
else 
{
	if (escupiendo == 1)
	{
		escupiendo = 0;
		image_index = 0;
		alarma = 0;
	}
}
#endregion
#region Elevar
y += elevo_tasa;
elevo_variable += elevo_tasa;
if (elevo_variable >= elevo_tope or elevo_variable <= -elevo_tope)
{
	elevo_tasa *= -1;
}
#endregion