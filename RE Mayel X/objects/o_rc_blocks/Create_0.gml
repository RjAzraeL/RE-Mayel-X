/// @desc Timer + Var Creation

//dont touch the sc_corners() script
sc_corners()

next_room= noone //next room to go
rc_img=noone //image on screen
rc_yspd=0 //Y_speed seconds
rc_xspd=0 //X_speed seconds

x = _x1/2   //X position
y= _y1/2    //Y position

time_to_finish=0.25 //seconds up to the room changes (middle of animation)

//alarm 0 change rooms in the middle of the animation
//alarm 1 finish the animation and destroy the object.
alarm[0]=time_to_finish * game_get_speed(gamespeed_fps)
alarm[1]=2*time_to_finish * game_get_speed(gamespeed_fps)

//the rectangles timer, only 1 so you can divide the time by 4,6,10.. if you want
//more rectangles on screen
summon_b= time_to_finish * game_get_speed(gamespeed_fps)
hide_b= time_to_finish * game_get_speed(gamespeed_fps)

//you can change the colours of every rectangle
color[1]=c_white
color[2]=c_ltgray
color[3]=c_gray
color[4]=c_dkgray







