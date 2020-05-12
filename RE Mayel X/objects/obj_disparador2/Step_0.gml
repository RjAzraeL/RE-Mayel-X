carga++;
if (carga >= carga_tope)
{
	carga = 0;
	var bala = instance_create_depth(x,y+8,0,obj_disparador_bala);
	bala . diagonal = 1;
	if (image_yscale == -1)
	{
		bala . inclinar = 1;
	}
}