/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//the code is sc_room_change(room_name,"transition_name")
//if you want to see only one of the transitions delete the others here
if room == room0 {
	sc_room_change(room1,choose("flush","boxes","blocks","clock","clock2", "arrows"))

} else {
	sc_room_change(room0,choose("flush","boxes","blocks","clock","clock2", "arrows"))

}


