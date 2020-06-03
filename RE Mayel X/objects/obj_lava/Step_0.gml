if (image_xscale = -1)
{
	carga++;
	if (carga == 240)
	{
		instance_create_depth(x,y,depth,obj_bolava);
		carga = 0;
	}
}