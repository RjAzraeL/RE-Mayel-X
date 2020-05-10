if (room != rm_mapa)
{
	image_alpha+=0.05;
}
else 
{
	image_alpha+=0.01;
}
if (image_alpha >= 1)
{
	room_goto(rm);
	instance_destroy();
}