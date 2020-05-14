if (entrando == 0)
{
#region Movimiento
image_yscale = scala;
reload = 0;
if (x > 16 and keyboard_check(btnizq)  or -gamepad_axis_value(obj_master.valor,gp_axislh))
{
	x -= velocidad;
	if (reload == 0)
	{
		reload = 1;
		paso++;
	}
	image_xscale = -scala;
}

if (x < room_width -16  and keyboard_check(btnder) or gamepad_axis_value(obj_master.valor,gp_axislh))
{
	x += velocidad;
	if (reload == 0)
	{
		reload = 1;
		paso++;
	}
	image_xscale = scala;
}

if (y > 16 and keyboard_check(btnarr) or -gamepad_axis_value(obj_master.valor,gp_axislv))
{
	y -= velocidad;
	if (reload == 0)
	{
		reload = 1;
		paso++;
	}
}

if (y < room_height-16 and keyboard_check(btnaba) or gamepad_axis_value(obj_master.valor,gp_axislv))
{
	y += velocidad;
	if (reload == 0)
	{
		reload = 1;
		paso++;
	}
}
if (paso >= 25)
{
	paso = 0;
	scr_sonido(snd_paso);
}
#endregion
#region Estado
if (x != xprevious or y != yprevious)
{
	estado = "Caminando";
}
else 
{
	estado = "Parado";
}
if (estado =="Parado")
{
	if (sprite_index != sprParado)
	{
		sprite_index = sprParado;
		image_index = 0;
		image_speed = 3;
	}
}
if (estado =="Caminando")
{
	if (sprite_index != sprCaminando)
	{
		sprite_index = sprCaminando;
		image_index = 0;
		image_speed = 4;
	}
}
#endregion
#region Ir nivel
if (entrando == 0)
	{
	if (keyboard_check_pressed(ord("Z"))  or gamepad_button_check_pressed(obj_master.valor,gp_face3))
	{
		if (place_meeting(x,y,obj_boton_mapa))
		{
			boton = instance_place(x,y,obj_boton_mapa);
			if (instance_number(obj_boton_mapa) != 0)
			{
				if (global.nivel[boton.ide,4] == 0 and boton.bloqueado == 0)
				{
					entrando = 1;
					image_speed = 3;
					sprite_index = sprParado;
					obj_master.mapamayels = scala;
					obj_master.mapamayelx = x;
					obj_master.mapamayely = y;
					obj_master.nivelactual = boton.ide;
					global.zona = global.nivel[boton.ide,5];
					scr_sonido(snd_entrada);
					scr_transicion(global.nivel[boton.ide,3]);
				}
			}
		}
	}
}
#endregion
}