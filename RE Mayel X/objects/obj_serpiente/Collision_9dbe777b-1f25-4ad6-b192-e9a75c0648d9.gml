if (superataque != 2)
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
			scr_particula_zona(8,8);
			vspeed = -salto;
			estirar = 1;
		}	
	}
}