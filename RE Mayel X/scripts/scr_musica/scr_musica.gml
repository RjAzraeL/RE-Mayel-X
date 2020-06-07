/// @desc Agrega musica
/// @arg musica

if !(audio_is_playing(argument0))
{
	audio_stop_all();
	audio_play_sound(argument0,10,true);
	audio_sound_gain(argument0,global.volumen_musica,0);
}