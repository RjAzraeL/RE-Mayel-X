direccion_arma = choose(-1,1);
chocar = 0;
carga = 0;
image_speed = 0;
image_index = 0;
carga_pos = 0;
limitado = 0;
diagonal = 0;
inclinar = 0;

if (instance_number(obj_mayel) != 0)
{
	if (distance_to_object(obj_mayel)<350)
	{
		//scr_sonido(snd_disparo_enemigos);
	}
}

posx[0] = x;
posy[0] = y;
posc[0] = c_red;

posx[1] = x;
posy[1] = y;
posc[1] = c_orange;

posx[2] = x;
posy[2] = y;
posc[2] = c_yellow;

posx[3] = x;
posy[3] = y;
posc[3] = c_green;

posx[4] = x;
posy[4] = y;
posc[4] = c_green;

posx[5] = x;
posy[5] = y;
posc[5] = c_white;

posx[6] = x;
posy[6] = y;
posc[6] = c_white;

posx[7] = x;
posy[7] = y;
posc[7] = c_white;

posx[8] = x;
posy[8] = y;
posc[8] = c_white;

posx[9] = x;
posy[9] = y;
posc[9] = c_white;