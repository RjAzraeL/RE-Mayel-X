image_angle += tasa;

gravity = global.gravedad;

if (wait == 0)
{
	wait = 1;
	if (direccionador == 0)
	{
		direction = random_range(0,180);
	}
	if (direccionador > 0)
	{
		direction = random_range(90,180);
	}
	if (direccionador < 0)
	{
		direction = random_range(90,0);
	}
	speed = random(4);
}

#region Caida
if (y >= room_height)
{
	instance_destroy();
}
#endregion