if (idbloque == noone)
{
	idbloque = other;
	if (hspeed > 0)
	{
		hspeed = -salto;
		scr_particula_zona(8,8);
		estirar = 1;
		exit;
	}
	if (hspeed < 0)
	{
		hspeed =salto;
		scr_particula_zona(8,8);
		estirar = 1;
		exit;
	}
}
if (idbloque == other)
{
	if (hspeed > 0)
	{
		hspeed = -salto;
		scr_particula_zona(8,8);
		estirar = 1;
		exit;
	}
	if (hspeed < 0)
	{
		hspeed = salto;
		scr_particula_zona(8,8);
		estirar = 1;
		exit;
	}	
}