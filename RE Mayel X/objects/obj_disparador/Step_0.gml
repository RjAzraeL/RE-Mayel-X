carga++;
if (carga >= carga_tope)
{
	carga = 0;
	instance_create_depth(x,y-8,0,obj_disparador_bala);
}