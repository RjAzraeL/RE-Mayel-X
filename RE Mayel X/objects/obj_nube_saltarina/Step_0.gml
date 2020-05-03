if (place_meeting(x,y-1,obj_mayel))
{
	if (instance_number(obj_mayel) != 0)
	{
		obj_mayel . vspeed = -5;
		scr_sonido(snd_salto);
	}
}