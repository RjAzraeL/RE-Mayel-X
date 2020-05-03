#region Gravedad
scr_gravedad();
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
#region Moverse
hspeed = velocidad;
if (place_meeting(x+velocidad,y,obj_bloque))
{
	velocidad *= -1;
}
if (hspeed > 0)
{
	image_xscale = 1;
}
if (hspeed < 0)
{
	image_xscale = -1;
}
#endregion
#region Colision
if (place_meeting(x,y + vspeed,obj_bloque))
{
		while (not place_meeting(x, y + sign(vspeed), obj_bloque))
		{
			y += sign(vspeed);
		}
		vspeed = 0;
}
if !(place_meeting(x+sprite_width,y+sprite_height/2,obj_bloque))
{
	velocidad *= -1;
}
#endregion