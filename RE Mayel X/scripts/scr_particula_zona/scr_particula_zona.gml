argument0 = 0;
argument1 = 0;
repeat (argument1)
{
	var part = instance_create_depth(x,y+argument0,0,obj_particula_zona);
	if (object_index == obj_mayel or object_index == obj_tuffie_caminante)
	{
		part . direccionador = image_xscale;
	}
}