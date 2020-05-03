if !(place_meeting(x,y+1,obj_bloque))
{
	vspeed += global.gravedad;
}
else 
{
	if (object_index == obj_mayel)
	{
		vspeed = 0;
	}
}
if (vspeed >= 12)
{
	vspeed = 12;
}