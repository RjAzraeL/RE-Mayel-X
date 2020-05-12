/// @desc Timer + Var Creation

//dont touch the sc_corners() script
sc_corners()

//the object starts above and moves down

next_room= noone //next room to go

rc_yspd=0 //Y_speed seconds
rc_xspd=0 //X_speed seconds

rc_img=s_flush //image on screen
x = _x1/2 //X position
y= _y0		//Y position

time_to_finish=0.3 //seconds up to change room (middle of animation)

//speed of the falling object
rc_yspd= _height/(time_to_finish* game_get_speed(gamespeed_fps)) 

vspeed = rc_yspd

//alarm 0 change rooms in the middle of the animation
//alarm 1 finish the animation and destroy the object.
alarm[0]=time_to_finish * game_get_speed(gamespeed_fps)
alarm[1]=2*time_to_finish * game_get_speed(gamespeed_fps)




