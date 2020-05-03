image_alpha -= 0.05;
image_angle += tasa;

if (image_alpha <= 0)
{
	instance_destroy();
}