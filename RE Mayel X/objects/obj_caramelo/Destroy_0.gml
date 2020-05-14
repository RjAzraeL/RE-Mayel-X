scr_particula(c_red);
scr_sonido(snd_ganar);
if (instance_number(obj_mayel) != 0)
{
	global.tipo = obj_mayel.tipo;
}
instance_destroy(obj_mayel);
instance_destroy();