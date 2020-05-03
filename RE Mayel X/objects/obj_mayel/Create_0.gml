paso = 0;
instance_create_depth(x,y,0,obj_camara);
depth = -6;
velocidad = 4;
salto = 9;
estado = "Parado";
invencible = 30;
fase_salto = 0;
sprCaminando = spr_mayel_caminando;
sprParado = spr_mayel_parado;
sprSaltando_medio = spr_mayel_saltando_caida;
sprSaltando_inicio = spr_mayel_saltando_inicio;
sprSaltando_final = spr_mayel_saltando_aterrizar;
friccion = 0;
friccion_valor = 5;
friccion_tope = 1.5;
tiene_llave = 0;
direccion = 1;
angulo_llave = 0;
tipo = 0;
global.xop = x;
global.yop = y;

/*
btnarr = vk_up;
btnizq = vk_left;
btnder = vk_right;
btndis1 = ord("Z");
btndis2 = ord("X");
*/

valor = -1;
var numPads= gamepad_get_device_count();
for(var i = 0; i < numPads; i++;)
{
    if(gamepad_is_connected(i))
    {
	    valor = i;
	    global.valor = valor;
	    show_debug_message(string(i) + ": " + gamepad_get_description(i));
    }
}

btnarr = vk_up;
btnizq = vk_left;
btnder = vk_right;
btndis1 = ord("Z");
btndis2 = ord("X");

scr_set_mayel(tipo);

//Herramientas
martillo_tope = 50;
martillo_cooldown = martillo_tope;

boomerang_tope = 70;
boomerang_cooldown = boomerang_tope;