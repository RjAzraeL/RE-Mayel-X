image_angle += tasa;

gravity = global.gravedad;

if (wait == 0)
{
	wait = 1;
	speed = random(4);
}

#region Caida
if (y >= room_height)
{
	instance_destroy();
}
#endregion
#region Vida
if (vida > 0)
{
	vida--;
}
else 
{
	instance_destroy();
}
#endregion