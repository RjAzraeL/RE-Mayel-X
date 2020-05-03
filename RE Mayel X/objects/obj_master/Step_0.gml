#region Pausa
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
#endregion
#region Reaparecer
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
			room_goto_next();
		}
	}
}
#endregion
