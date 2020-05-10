carga++;
if (carga > 180)
{
	scr_transicion(rm_pantalla_titulo);
}


if (keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(global.valor,gp_start))
{
	scr_sonido(snd_botonb);
	scr_transicion(rm_pantalla_titulo);
}