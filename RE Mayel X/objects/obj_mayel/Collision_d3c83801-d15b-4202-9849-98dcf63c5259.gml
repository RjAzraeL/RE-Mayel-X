if (other.object_index != obj_lava)
{
	if (tipo != 1)
	{
		if (invencible == 0)
		{
			scr_sonido(snd_perder);
			scr_particula(c_white);
			obj_master.conllave = tiene_llave;
			instance_destroy();
		}
	}
	else 
	{
		scr_sonido(snd_golpe);
		tipo = 0;
		scr_set_mayel(tipo);
		invencible = 30;
	}
}
else 
{
	scr_sonido(snd_perder);
	scr_particula(c_white);
	obj_master.conllave = tiene_llave;
	instance_destroy();
}