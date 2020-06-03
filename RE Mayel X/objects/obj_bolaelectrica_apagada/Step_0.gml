carga++;
if (carga == 180)
{
	instance_create_depth(x,y,depth,obj_bolaelectrica_encendida);
	carga = 0;
	instance_destroy();
}