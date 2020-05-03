image_speed = 1;
sprite_index = spr_lava;
if (place_meeting(x,y-16,object_index))
{
	sprite_index = spr_magma;
}