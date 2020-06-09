if (object_index != obj_disparador_bala and object_index != obj_bolava and object_index != obj_disparador_bala_arana and object_index != obj_flecha and object_index != obj_disparador_fuego_lanzallama and object_index != obj_bolaelectrica_encendida) //La bala no tendra una animacion al destruirse
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
	if (object_index == obj_tuffie_duro or object_index == obj_tuffie_invertido_duro or object_index == obj_tuffie_disparador
	or object_index == obj_tuffie_disparador_recto)
	{
		instance_create_depth(x,y,depth,obj_upgrade_casco);
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