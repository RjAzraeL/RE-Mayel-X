scr_data_mayels();
scr_data_nivel();
scr_data_zona();
depth = -1000;
x = -32;
y = -32;
global.zona_maxima = 1;
xo = 0;
yo = 0;
valor = -1; 
volver = 0;
trueno = 0;
ceniza = 0;
conllave = 0;
nivelactual = 0;
mapamayelx = 480;
mapamayely = 480;
mapamayels = 0.5;
global.moneda = 0;
global.gema = 0;
global.gema_local = 0;
global.gema = 0;
global.valor = -1;
global.pausa = 0;
global.gravedad = 0.4;
global.zona = 0;
global.volumen_musica = 0.1;
global.volumen_sonido = 0.5;
global.xop = 0;
global.tipo = 0;
global.yop = 0;
btnarr = vk_up;
btnizq = vk_left;
btnder = vk_right;
btndis1 = ord("Z");
btndis2 = ord("X");
btnaba = vk_down;

var numPads= gamepad_get_device_count();
for(var i = 0; i < numPads; i++;)
{
    if(gamepad_is_connected(i))
    {
	    valor = i;
    }
}

room_goto_next();