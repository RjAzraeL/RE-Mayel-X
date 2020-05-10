if (object_index != obj_disparador_bala and object_index != obj_disparador_bala_arana and object_index != obj_flecha) //La bala no tendra una animacion al destruirse
{
	var muerto = instance_create_depth(x,y,-10,obj_muerto);
	muerto . sprite_index = sprite_index;
	if (object_index != obj_duende and object_index != obj_duende_horizontal)
	{
		scr_sonido(snd_enemigo_caida);
	}
	else 
	{
		scr_sonido(snd_ow);
	}
	if (direccion_arma < 0)
	{
		muerto . hspeed = 2;
	}
	if (direccion_arma > 0)
	{
		muerto . hspeed = -2;
	}
}