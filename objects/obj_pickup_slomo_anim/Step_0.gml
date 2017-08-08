part_particles_create(partSys, x, y, partType, 1);
move_towards_point(0, 0, 2);

if (distance_to_point(0, 0) < 4) {
	instance_destroy();
}