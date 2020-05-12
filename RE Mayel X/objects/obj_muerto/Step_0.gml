if (sprite_index == spr_ene_tuffie_nave)
{
	image_index = 2;
	image_speed = 0;
}
if (sprite_index == spr_ene_tuffie_nave_disparadora)
{
	image_index = 2;
	image_speed = 0;
}

image_xscale += 0.02;
image_yscale += 0.02;
image_angle += 5;

gravity = global.gravedad;

#region Caida
if (y >= room_height)
{
	instance_destroy();
}
#endregion
#region Balin
if (sprite_index == spr_disparador_bala)
{
	if (carga > 2)
	{
		carga = 0;
		image_blend = choose(c_red,c_black,c_green,c_orange,c_purple,c_fuchsia,c_white,c_yellow,c_lime,c_olive);
	}
	else 
	{
		carga++;
	}
}
#endregion