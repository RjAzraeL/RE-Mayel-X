if (place_meeting(x,y-1,obj_mayel))
{
	if (instance_number(obj_mayel) != 0)
	{
		obj_mayel . vspeed = -16;
		scr_sonido(snd_trampolin);
		image_speed = 2;
	}
}