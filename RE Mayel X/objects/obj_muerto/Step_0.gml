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