if (oculto == 0)
{
	if (idbloque == noone)
	{
		idbloque = other;
		if (vspeed > 0)
		{
			vspeed = -salto;
			scr_particula_zona(8,8);
			estirar = 1;
		}
	}
	if (idbloque == other)
	{
		if (vspeed > 0)
		{
			vspeed = -salto;
			scr_particula_zona(8,8);
			estirar = 1;
		}	
	}
}