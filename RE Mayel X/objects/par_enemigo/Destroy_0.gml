if (object_index != obj_disparador_bala) //La bala no tendra una animacion al destruirse
{
	var muerto = instance_create_depth(x,y,-10,obj_muerto);
	muerto . sprite_index = sprite_index;
	scr_sonido(snd_enemigo_caida);
	if (direccion_arma < 0)
	{
		muerto . hspeed = 2;
	}
	if (direccion_arma > 0)
	{
		muerto . hspeed = -2;
	}
}