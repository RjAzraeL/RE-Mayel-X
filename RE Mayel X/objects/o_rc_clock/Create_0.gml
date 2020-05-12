/// @desc Timer + Var Creation

//dont touch the sc_corners() script
sc_corners()

next_room= noone //next room to go
rc_img=noone //image on screen

rc_health=0  //how full is the circle
rc_maxhealth=100 //max number of slices for the circle
rc_alpha=1  //transparency

x = _x0//X position
y= _y1  //Y position

time_to_finish=0.6 //seconds up to change room (middle of animation)

alarm[0]=time_to_finish * game_get_speed(gamespeed_fps)
alarm[1]=2*time_to_finish * game_get_speed(gamespeed_fps)

rc_maxfps= time_to_finish * game_get_speed(gamespeed_fps)

color[1] = c_navy //color of the circle

rc_rad = max(_height*2,_width*2) //the circle has to fill the screen
rc_dir =1  // this can be 1 or -1, 1 = clockwise, how it will be filled




