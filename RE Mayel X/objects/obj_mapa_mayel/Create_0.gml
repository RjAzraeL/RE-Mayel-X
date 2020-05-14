entrando = 0;
sprCaminando = spr_mayel_caminando;
sprParado = spr_mayel_parado;
sprSaltando_medio = spr_mayel_saltando_caida;
sprSaltando_inicio = spr_mayel_saltando_inicio;
sprSaltando_final = spr_mayel_saltando_aterrizar;
btnarr = obj_master.btnarr;
btnizq = obj_master.btnizq;
btnder = obj_master.btnder;
btnaba = obj_master.btnaba
btndis1 = obj_master.btndis1;
btndis2 = obj_master.btndis2;
paso = 0;
velocidad = 3;
tipo = global.tipo;
depth = -5;
reload = 0;
scala = 0.5;
image_xscale = scala;
estado = "Parado";

x = obj_master.mapamayelx;
y = obj_master.mapamayely;
image_xscale = obj_master.mapamayels;

var nivel = 0;
var aumento = 0;
var maximo = 0;
var zonaactual = 1;

#region Deteccion zona completada
for (var z = 0; z < array_height_2d(global.nivel) ; z++)
{
	aumento++;
	if (global.nivel[z,5] == global.zona_maxima)
	{
		if (global.nivel[z,1] == 1)
		{
			nivel++;
		}
	}
	if (aumento == 4)
	{
		if (nivel ==  aumento)
		{
			global.zona_maxima++;
		}
		aumento = 0;
		nivel = 0;
	}
}
#endregion

scr_set_mayel(tipo);