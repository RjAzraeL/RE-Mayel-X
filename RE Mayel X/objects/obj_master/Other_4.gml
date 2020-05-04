global.gema_local = 0;
if (room == rm_n_a1)
{
	global.zona = 1;
	 var mus1 = audio_create_stream("Musica/mus_zona1.ogg");
	script_execute(scr_musica,mus1);
	scr_musica(mus1);
}
if (room == rm_n_b1)
{
	global.zona = 2;
	var mus2 = audio_create_stream("Musica/mus_zona2.ogg");
	script_execute(scr_musica,mus2);
	scr_musica(mus2);
}
if (room == rm_n_c1)
{
	global.zona = 3;
	var mus3 = audio_create_stream("Musica/mus_zona3.ogg");
	script_execute(scr_musica,mus3);
	scr_musica(mus3);
}
if (room == rm_n_d1)
{
	global.zona = 4;
	var mus4 = audio_create_stream("Musica/mus_zona4.ogg");
	script_execute(scr_musica,mus4);
	scr_musica(mus4);
}