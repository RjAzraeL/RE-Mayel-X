/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//if you want to make 6,10,100 rectangles
//is the same, but use a For statement and a grid
if alarm[0]<summon_b/4 and alarm[1]>hide_b/4{
draw_set_color(color[4])
draw_rectangle(x,y,_x1,_y0,0)

}
//each rectangle is alive between his own "summon" and "hide" time
if alarm[0]<(summon_b/4)*2 and alarm[1]>hide_b/4*2{
draw_set_color(color[3])
draw_rectangle(x,y,_x0,_y0,0)

}

if alarm[0]<(summon_b/4)*3 and alarm[1]>(hide_b/4)*3{
draw_set_color(color[2])
draw_rectangle(x,y,_x0,_y1,0)

}

if alarm[0]<summon_b and alarm[1]>hide_b{
draw_set_color(color[1])
draw_rectangle(x,y,_x1,_y1,0)

}




