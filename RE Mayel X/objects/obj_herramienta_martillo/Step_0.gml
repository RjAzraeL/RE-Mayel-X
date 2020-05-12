#region Gravedad
scr_gravedad();
#endregion
#region Disparo
if (hacer == 0)
{
	hacer = 1;
	if (instance_number(creador))
	{
		vspeed = -5;
		if (creador.image_xscale < 0)
		{
			hspeed = -5;
		}
		if (creador.image_xscale > 0)
		{
			hspeed = 5;
		}
		tasa = -hspeed ;
	}
}
#endregion
#region Angulo
image_angle += tasa;
#endregion