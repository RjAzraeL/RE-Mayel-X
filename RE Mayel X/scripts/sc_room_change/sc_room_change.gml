/// @description sc_room_change(ROOM_NAME, TRANSITION)


var animation = argument1

var _qq = noone

switch(animation) {

case "flush":
	_qq=instance_create_depth(0,0,-1000,o_rc_flush);	break;

case "boxes":
	_qq=instance_create_depth(0,0,-1000,o_rc_boxes);	break;

case "blocks":
	_qq=instance_create_depth(0,0,-1000,o_rc_blocks);	break;

case "clock2":
	_qq=instance_create_depth(0,0,-1000,o_rc_clock2);	break;

case "arrows":
	_qq=instance_create_depth(0,0,-1000,o_rc_arrows);	break;

case "clock":
	_qq=instance_create_depth(0,0,-1000,o_rc_clock);	break;

}

	_qq.next_room= argument0
	
	