if (dataload == 0)
{
	dataload = 1;
	roomdireccion = global.nivel[ide,3];
	color = global.zonas[global.nivel[ide,5],1];
	if (global.nivel[ide,5] > global.zona_maxima)
	{
		//bloqueado = 1; ACA CAMBIA PARA BLOQUEAR
		bloqueado = 0;
	}
	if (global.nivel[ide,1] == 1)
	{
		image_index = 1;
	}
	if (global.nivel[ide,2] == 1)
	{
		image_index = 2;
	}
}