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
#region Superataque
if (instance_number(obj_mayel) != 0)
{
	if (distance_to_object(obj_mayel) < 100)
	{
		if (superataque == 0)
		{
			superataque = 1;
		}
	}
	if (superataque == 1)
	{
		scr_sonido(snd_momia);
		superataque = 2;
		vspeed = -salto;
		image_index = 2;
	}
}
#endregion
#region Colision
if (superataque != 2)
{
	if (place_meeting(x,y + vspeed,obj_bloque))
	{
			while (not place_meeting(x, y + sign(vspeed), obj_bloque))
			{
				y += sign(vspeed);
			}
			vspeed = 0;
	}
}
#endregion