if (estirar == 1)
{
	image_y+= 0.02;
	if (vspeed > 0)
	{
		estirar = 2;
	}
}
if (estirar == 2)
{
	if (image_y > 0)
	{
		image_y-= 0.02;
	}
}