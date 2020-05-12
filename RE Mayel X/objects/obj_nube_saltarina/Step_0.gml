#region Colision
if (place_meeting(x,y-1,obj_mayel))
{
	if (instance_number(obj_mayel) != 0)
	{
		if (carga == 0)
		{
			obj_mayel . vspeed = -5;
			carga = 1;
			scr_sonido(snd_salto);
		}
	}
}
if (carga == 1)
{
	carga2++;
	if (carga2 > 15)
	{
		carga2 = 0;
		carga = 0;
	}
}
#endregion