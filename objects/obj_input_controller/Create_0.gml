var gamepadCount = gamepad_get_device_count();

gamepad = -1;
for (var i = 0; i < gamepadCount; i++) {
	if (gamepad_is_connected(i)) {
		gamepad = i;
	}
}

if (gamepad == -1) {
	show_error("A gamepad is required to play this game.", true);
}

global.gamepad = gamepad;
room_goto_next();