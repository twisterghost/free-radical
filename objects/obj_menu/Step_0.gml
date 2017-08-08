if (gamepad_button_check_pressed(global.gamepad, gp_face1)) {
	global.slowdown = seconds(1);
	global.gameScore = 0;
	global.levelNumber = 1;
	room_goto_next();
}