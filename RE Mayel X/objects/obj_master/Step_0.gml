#region Pausa
if (room != rm_mapa)
{
	if (keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(global.valor,gp_start))
	{
		if (global.pausa == 0)
		{
			scr_sonido(snd_pausa);
			xo = obj_camara.x;
			yo = obj_camara.y;
			instance_deactivate_all(true);
			nubechica = layer_get_id("bkg_nube_chica");
			nube = layer_get_id("bkg_nube");
			layer_hspeed(nubechica,0);
			layer_hspeed(nube,0);
			global.pausa = 1;
			screen_save("pausa.png");
			pausa = sprite_add("pausa.png",0,false,false,0,0);
		}
		else 
		{
			scr_sonido(snd_pausa);
			instance_activate_all();
			layer_hspeed(nubechica,1);
			layer_hspeed(nube,2);
			sprite_delete(pausa);
			global.pausa = 0;
		}
	}
}
#endregion
#region Reaparecer
if (room != rm_mapa)
{
	if (global.pausa == 0)
	{
		if (instance_number(obj_mayel) == 0)
		{
			volver++;
			if (volver >= 30)
			{
				volver = 0;
				var mayel = instance_create_depth(global.xop,global.yop,-6,obj_mayel);
				mayel . tiene_llave = conllave;
				conllave = 0;
				scr_particula(c_white);
			}
		}
		if (instance_number(obj_caramelo) == 0)
		{
			volver++;
			if (volver >= 30)
			{
				volver = 0;
				global.nivel[nivelactual,1] = 1;
				if (instance_number(obj_moneda) == 0 and instance_number(obj_gema) == 0)
				{
					global.nivel[nivelactual,2] = 1;
				}
				nivelactual = 0;
				global.zona = 0;
				scr_transicion(rm_mapa);
			}
		}
	}
	#endregion
#region Lluvia
	if (global.zona == 4)
	{
		effect_create_above(ef_rain,0,0,0,make_color_rgb(64,165,176));
		if (trueno != 0)
		{
			trueno--;
		}
		else 
		{
			instance_create_depth(x,y,-1000000,obj_trueno);
			trueno = round(random_range(200,500));
		}
	}
}
#endregion
#region Ceniza
if (room != rm_mapa)
{
	if (global.zona == 2)
	{
		if (ceniza > 0)
		{
			ceniza--;
		}
		else 
		{
			ceniza = random_range(20,60);
			repeat (8)
			{
				instance_create_depth(camera_get_view_x(view_camera[0])+random_range(0,960),camera_get_view_y(view_camera[0])+540,0,obj_particula_volcan);
			}
		}
	}
}
#endregion
#region Polvo
if (room != rm_mapa)
{
	if (global.zona == 5)
	{
		if (ceniza > 0)
		{
			ceniza--;
		}
		else 
		{
			ceniza = random_range(20,60);
			repeat (4)
			{
				instance_create_depth(camera_get_view_x(view_camera[0])+random_range(0,960),camera_get_view_y(view_camera[0])+540,0,obj_particula_volcan);
			}
		}
	}
}
#endregion
#region Burbuja
if (room != rm_mapa)
{
	if (global.zona == 6)
	{
		if (ceniza > 0)
		{
			ceniza--;
		}
		else 
		{
			ceniza = random_range(20,60);
			repeat (4)
			{
				instance_create_depth(camera_get_view_x(view_camera[0])+random_range(0,960),camera_get_view_y(view_camera[0])+540,0,obj_particula_volcan);
			}
		}
	}
}
#endregion
#region Pantalla
/*
if (keyboard_check_pressed(vk_f4))
{
	if window_get_fullscreen()
	{
		window_set_fullscreen(false);
	}
	else
	{
		window_set_fullscreen(true);
	}
}
*/
#endregion