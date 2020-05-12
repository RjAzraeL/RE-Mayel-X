if (place_meeting(x,y,argument0))
{
	var __temp1 = instance_place(x,y,argument0);
	if (instance_number(__temp1)!=0)
	{
		instance_destroy(__temp1);
	}
	//Scrips especiales

	if (argument0 == obj_llave)
	{
		if (instance_number(obj_puerta) != 0)
		{
			tiene_llave += 1;
		}
	}
}