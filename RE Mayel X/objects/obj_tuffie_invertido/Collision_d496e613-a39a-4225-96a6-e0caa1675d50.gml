if (idbloque == noone)
{
	idbloque = other;
	if (vspeed > 0)
	{
		vspeed = salto;
		estirar = 1;
	}
}
if (idbloque == other)
{
	if (vspeed > 0)
	{
		vspeed = salto;
		estirar = 1;
	}	
}