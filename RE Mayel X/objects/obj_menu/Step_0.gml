carga++;
if (carga > 30)
{
	carga = 0;
	if (ver == true)
	{
		ver = false;
	}
	else 
	{
		ver = true;
	}
}


if (keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(global.valor,gp_start))
{
	scr_sonido(snd_botonb);
	scr_transicion(rm_mapa);
}