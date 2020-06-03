carga++;
if (carga == 180)
{
	instance_create_depth(orix,oriy,0,obj_bolaelectrica_apagada);
	instance_destroy();
}

x = orix + random_range(-1,1);
y = oriy + random_range(-1,1);