/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self()

draw_set_halign(fa_center)
draw_set_alpha(0.7)
draw_set_font(f_1)
draw_rectangle_color(0,room_height/2-40,room_width,room_height/2+40,c_red,c_red,c_red,c_red,0)

draw_set_alpha(1)
draw_set_color(c_white)

draw_text(room_width/2,room_height/2-20, "Click on the big arrow to change room")

draw_text(room_width/2,room_height/2, "The animation is randomly chosen")



