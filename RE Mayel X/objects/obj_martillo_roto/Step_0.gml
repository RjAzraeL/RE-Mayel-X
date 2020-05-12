image_angle += 5;

gravity = global.gravedad;

#region Caida
if (y >= room_height)
{
	instance_destroy();
}
#endregion