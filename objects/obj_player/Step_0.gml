if (gamepad_button_check_pressed(global.gamepad, gp_shoulderr) && global.slowdown > 0) {
	slowing = !slowing;
}

if (slowing) {
	global.slowdown -= d(1);
	delta_override(.1);
	if (global.slowdown <= 0) {
		slowing = false;
	}
}

if (gamepad_button_check_pressed(global.gamepad, gp_face1)) {
	var gph = gamepad_axis_value(global.gamepad, gp_axislh);
	var gpv = gamepad_axis_value(global.gamepad, gp_axislv);
	direction = point_direction(0, 0, gph, gpv);
	d_speed += gain;
}

if (collision_line(x, y, lastx, lasty, obj_wall, false, true)) {
	x = xstart;
	y = ystart;
	d_speed = 0;
}

var slowmoPickup = collision_line(x, y, lastx, lasty, obj_pickup_slomo, false, true);
if (slowmoPickup != noone) {
	global.slowdown += seconds(1);
	with (slowmoPickup) {
		instance_destroy();
	}
}

var switchPickup = collision_line(x, y, lastx, lasty, obj_switch, false, true);
if (switchPickup != noone) {
	with (obj_wall_switch) {
		instance_destroy();
	}
	with (switchPickup) {
		instance_destroy();
	}
}



var goal = collision_line(x, y, lastx, lasty, obj_goal, false, true);
if (goal != noone) {
	if (goal.skip != -1) {
        global.levelNumber += 1 + goal.skipCount;
		room_goto(goal.skip);
	} else if (room != room_last) {
		global.levelNumber += 1;
		room_goto_next();
	} else {
		room_goto_next();
	}
}

if (d_speed == 0) {
	part_particles_create(partSys, x, y, normalPart, 5);
} else {
	for (var i = 0; i < d_speed; i++) {
		var xx = lastx + lengthdir_x(i, direction);
		var yy = lasty + lengthdir_y(i, direction);
		part_particles_create(partSys, xx, yy, normalPart, 5);
	}
}

lastx = x;
lasty = y;
