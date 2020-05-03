scr_data_mayels();
depth = -1000;
x = -32;
y = -32;
xo = 0;
yo = 0;
valor = -1; 
volver = 0;
conllave = 0;
global.moneda = 0;
global.gema = 0;
global.gema_local = 0;
global.gema = 0;
global.valor = -1;
global.pausa = 0;
global.gravedad = 0.4;
global.zona = 1;
global.volumen_musica = 0.1;
global.volumen_sonido = 0.5;
global.xop = 0;
global.yop = 0;


var numPads= gamepad_get_device_count();
for(var i = 0; i < numPads; i++;)
{
    if(gamepad_is_connected(i))
    {
	    valor = i;
    }
}

room_goto_next();