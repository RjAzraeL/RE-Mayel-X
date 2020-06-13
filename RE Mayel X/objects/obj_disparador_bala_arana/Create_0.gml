direccion_arma = choose(-1,1);
chocar = 1;
carga = 0;
image_speed = 0;
image_index = 0;
carga_pos = 0;
limitado = 0;
diagonal = 0;
tipo = "trampa";
scr_sonido(snd_disparo_enemigos);
if (instance_number(obj_mayel) != 0)
{
	move_towards_point(obj_mayel.x,obj_mayel.y,5);
}