//image_angle += 4;
if (limitado == 0)
{
	if (inclinar == 0)
	{
		gravity = global.gravedad;
	}
	else 
	{
		gravity = -global.gravedad;
	}
}
else 
{
	vspeed = 0;
	gravity = 0;
}

if (carga > 2)
{
	carga = 0;
	image_blend = choose(c_red,c_black,c_green,c_orange,c_purple,c_fuchsia,c_white,c_yellow,c_lime,c_olive);
}
else 
{
	carga++;
}

al += 0.01;
carga_pos++;

if (carga_pos == 2)
{
	posx[1] = x;
	posy[1] = y;
}
if (carga_pos == 4)
{
	posx[2] = x;
	posy[2] = y;
}
if (carga_pos == 6)
{
	posx[3] = x;
	posy[3] = y;
}
if (carga_pos == 8)
{
	posx[4] = x;
	posy[4] = y;
}
if (carga_pos == 10)
{
	posx[5] = x;
	posy[5] = y;
}
if (carga_pos == 12)
{
	posx[6] = x;
	posy[6] = y;
}
if (carga_pos == 14)
{
	posx[7] = x;
	posy[7] = y;
}
if (carga_pos == 16)
{
	posx[8] = x;
	posy[8] = y;
}
if (carga_pos == 18)
{
	posx[9] = x;
	posy[9] = y;
}
if (carga_pos == 20)
{
	carga_pos = 0;
}




