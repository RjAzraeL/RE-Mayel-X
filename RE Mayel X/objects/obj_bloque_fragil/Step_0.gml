image_speed = 0;
if (place_meeting(x,y-1,obj_mayel))
{
	toque = 1;
}
if (toque == 1)
{
	image_index = 1;
	time++;
}
if (time >= 40)
{
	scr_sonido(snd_bloque_fragil);
	instance_destroy();
}