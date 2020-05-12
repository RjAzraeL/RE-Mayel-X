if (place_meeting(x,y,obj_mayel) and image_index == 0)
{
	image_index = 1;
	scr_sonido(snd_botonb);
	instance_destroy(obj_bloque_b);
}