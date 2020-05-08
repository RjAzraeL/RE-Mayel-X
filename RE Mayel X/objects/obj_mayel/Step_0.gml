#region Gravedad
scr_gravedad();
#endregion
#region Movimiento
if (keyboard_check(btnizq) or -gamepad_axis_value(valor,gp_axislh))
{
	if !(place_meeting(x-velocidad,y,obj_bloque))
	{
		paso++;
		direccion = -1;
		x-= velocidad;
		
	}
}
if (keyboard_check(btnder) or gamepad_axis_value(valor,gp_axislh))
{
	if !(place_meeting(x+velocidad,y,obj_bloque))
	{
		direccion = 1;
		x+= velocidad;
		paso++;
	}
}
if (paso >= 25 and place_meeting(x,y+1,obj_bloque))
{
	paso = 0;
	scr_particula_zona(28,8);
	scr_sonido(snd_paso);
}
if (keyboard_check_released(btnder) or keyboard_check_released(btnizq))
{
	if (place_meeting(x,y+velocidad,obj_bloque))
	{
		friccion = 1;
		paso = 0;
		friccion_valor = friccion_tope;
	}
}
if !(place_meeting(x,y+1,obj_bloque))
{
	friccion = 0;
}
if (friccion == 1 and place_meeting(x,y+1,obj_bloque))
{
	if (image_xscale>0 and friccion_valor>0 and (!place_meeting(x+1,y,obj_bloque)) and direccion == 1)
	{
		x += friccion_valor;
		friccion_valor -= 0.1;
	}
	if (image_xscale<0 and friccion_valor>0 and (!place_meeting(x-1,y,obj_bloque)) and direccion == -1)
	{
		x -= friccion_valor;
		friccion_valor -= 0.1;
	}
	if (friccion_valor <= 0)
	{
		friccion = 0;
		friccion_valor = friccion_tope;
	}
}
if (keyboard_check(btnarr) or gamepad_button_check_pressed(valor,gp_face1))
{
	if (place_meeting(x,y+1,obj_bloque))
	{
		scr_sonido(snd_salto);
		vspeed = -salto;
		fase_salto = 0;
	}
}
#endregion
#region Estado
if (place_meeting(x,y+1,obj_bloque))
{
	if (x<xprevious)
	{
		image_xscale = -1;
	}
	if (x>xprevious)
	{
		image_xscale = 1;
	}
}
if (place_meeting(x,y+1,obj_bloque))
{	
	if (fase_salto != 2)
	{
		if (x!=xprevious)
		{
			estado = "Caminando";
		}
		else 
		{
			estado = "Parado"
		}
	}
}
else 
{
	fase_salto = 1;
	estado = "Saltando";
}

if (sprite_index == sprSaltando_medio and fase_salto == 1 and place_meeting(x,y+1,obj_bloque))
{
	fase_salto = 2;
	estado = "Cayendo";
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
		image_speed = 3;
	}
}
if (estado =="Saltando")
{
	if (sprite_index != sprSaltando_inicio and fase_salto == 0)
	{
		sprite_index = sprSaltando_inicio;
		image_index = 0;
		image_speed = 9;
	}
	if (sprite_index != sprSaltando_medio and fase_salto == 1)
	{
		sprite_index = sprSaltando_medio;
		image_index = 0;
		image_speed = 1;
	}
}
if (estado =="Cayendo")
{
	if (sprite_index != sprSaltando_final)
	{
		scr_sonido(snd_caida);
		scr_particula_zona(28,8);
		sprite_index = sprSaltando_final;
		image_index = 0;
		image_speed = 6;
	}
}
/*
if (estado =="Accionar")
{
	if (sprite_index != spr_bukko_accion)
	{
		sprite_index = spr_bukko_accion;
		image_index = 0;
		image_speed = 0;
	}
}*/
#endregion
#region Recoleccion
scr_colision_destruccion(obj_moneda);
scr_colision_destruccion(obj_caramelo);
scr_colision_destruccion(obj_llave);
scr_colision_destruccion(obj_gema);
#endregion
#region Reiniciar
if (keyboard_check_pressed(ord("R")))
{
	room_restart();
}
#endregion
#region Disparar
if (martillo_cooldown < martillo_tope)
{
	martillo_cooldown++;
}
if (boomerang_cooldown < boomerang_tope)
{
	boomerang_cooldown++;
}
if (keyboard_check_pressed(btndis1) or gamepad_button_check_pressed(valor,gp_face3))
{
	if (martillo_cooldown >= martillo_tope)
	{
		scr_sonido(snd_lanza_martillo);
		martillo_cooldown = 0;
		disparo = instance_create_depth(x + (image_xscale * 32),y,-5,obj_herramienta_martillo);
		disparo . creador = self;
	}
}
if (keyboard_check_pressed(btndis2) or gamepad_button_check_pressed(valor,gp_face2))
{
	if (instance_number(obj_herramienta_boomerang) == 0)
	{
		if (boomerang_cooldown >= boomerang_tope)
		{
			scr_sonido(snd_lanza_boomerang);
			boomerang_cooldown = 0;
			disparo = instance_create_depth(x + (image_xscale * 32),y,-5,obj_herramienta_boomerang);
			disparo . creador = self;
		}
	}
}
#endregion
#region LLave
angulo_llave += 5;
if (angulo_llave >= 360)
{
	angulo_llave = 0;
}
#endregion
#region Colision
if (place_meeting(x,y + vspeed,obj_bloque))
{
		while (not place_meeting(x, y + sign(vspeed), obj_bloque))
		{
			y += sign(vspeed);
		}
		vspeed = 0;
}
#endregion
#region Invencible
if (invencible > 0)
{
	image_alpha = 0.5;
	invencible--;
}
else 
{
	image_alpha = 1;
}
#endregion
#region Caer
if (y > room_height)
{
	scr_sonido(snd_perder);
	scr_particula(c_white);
	obj_master.conllave = tiene_llave;
	instance_destroy();
}
#endregion
#region Salir
if (keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(global.valor,gp_shoulderlb))
{
	obj_master.nivelactual = 0;
	global.zona = 0;
	room_goto(rm_mapa);
}
#endregion
#region Entrar portal
if (keyboard_check(btnaba)  or gamepad_axis_value(valor,gp_axislv))
{
	if (cooldown_portal == 0)
	{
		cooldown_portal = 20;
		if (place_meeting(x,y,obj_portal))
		{
			tp = instance_furthest(x,y,obj_portal);
			x = tp.x;
			y = tp.y;
			scr_sonido(snd_portal);
		}
	}
	else 
	{
		cooldown_portal--;
	}
}
#endregion