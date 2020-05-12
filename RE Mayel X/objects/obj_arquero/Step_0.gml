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
alarma++;
if (alarma == 250)
{
	image_index = 1;
}
if (alarma >= 270)
{
	image_index = 0;
	alarma = 0;
	if (image_xscale > 0)
	{
		var bala = instance_create_depth(x,y,-5,obj_flecha);
		bala . hspeed = 9;
		bala .vspeed = -3;
		bala . chocar = 0;
		bala . limitado = 1;
	}
	if (image_xscale < 0)
	{
		bala = instance_create_depth(x,y,-5,obj_flecha);
		bala . hspeed = -9;
		bala .vspeed = -3;
		bala . chocar = 0;
		bala . limitado = 1;
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
#region Mirar
if (instance_number(obj_mayel) != 0)
{
	if (x < obj_mayel.x)
	{
		image_xscale = 1;
	}
	if (x > obj_mayel.x)
	{
		image_xscale = -1;
	}
}
#endregion