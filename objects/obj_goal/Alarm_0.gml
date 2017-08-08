var spawnWidth = sprite_width// - sprite_get_width(spr_wall);
var spawnHeight = sprite_height// - sprite_get_height(spr_wall);
var spawnX = x + irandom_range(-spawnWidth / 2, spawnWidth / 2);
var spawnY = y + irandom_range(-spawnHeight / 2, spawnHeight / 2);

part_particles_create(global.wallSys, spawnX, spawnY, partType, 1);

if (skip != -1) {
	part_particles_create(global.wallSys, spawnX, spawnY, partTypeSkip, 1);
}

alarm[0] = 1;