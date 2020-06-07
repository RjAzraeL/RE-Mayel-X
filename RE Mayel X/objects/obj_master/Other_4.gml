instance_create_depth(0,0,-10000,obj_transicion_inicio);
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

depth = -1000;
global.gema_local = 0;
if (room == rm_pantalla_titulo and room != rm_presentacion)
{
	var must = audio_create_stream("Musica/mus_pantalla_titulo.ogg");
	script_execute(scr_musica,must);
	scr_musica(must);
}
if (global.zona == 0 and room != rm_pantalla_titulo and room != rm_presentacion)
{
	var musm = audio_create_stream("Musica/mus_mapa.ogg");
	script_execute(scr_musica,musm);
	scr_musica(musm);
}
if (global.zona == 1)
{
	 var mus1 = audio_create_stream("Musica/mus_zona1.ogg");
	script_execute(scr_musica,mus1);
	scr_musica(mus1);
}
if (global.zona == 2)
{
	var mus2 = audio_create_stream("Musica/mus_zona2.ogg");
	script_execute(scr_musica,mus2);
	scr_musica(mus2);
}
if (global.zona == 3)
{
	var mus3 = audio_create_stream("Musica/mus_zona3.ogg");
	script_execute(scr_musica,mus3);
	scr_musica(mus3);
}
if (global.zona == 4)
{
	var mus4 = audio_create_stream("Musica/mus_zona4.ogg");
	script_execute(scr_musica,mus4);
	scr_musica(mus4);
	trueno = 30;
}
if (global.zona == 5)
{
	var mus5 = audio_create_stream("Musica/mus_zona5.ogg");
	script_execute(scr_musica,mus5);
	scr_musica(mus5);
}
if (global.zona == 6)
{
	var mus6 = audio_create_stream("Musica/mus_zona6.ogg");
	script_execute(scr_musica,mus6);
	scr_musica(mus6);
}
if (global.zona == 7)
{
	var mus7 = audio_create_stream("Musica/mus_zona7.ogg");
	script_execute(scr_musica,mus7);
	scr_musica(mus7);
}