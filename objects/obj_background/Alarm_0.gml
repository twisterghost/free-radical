if (!obj_player.slowing) {
	part_particles_create(partSys, obj_player.x, obj_player.y, bgPart, 1);
}
d_alarm[0] = seconds(.75);