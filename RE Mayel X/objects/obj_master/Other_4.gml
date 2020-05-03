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