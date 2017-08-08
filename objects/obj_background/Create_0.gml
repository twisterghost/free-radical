event_inherited();
partSys = part_system_create();
part_system_depth(partSys, depth);

bgPart = pt_new();
pt_sprite(spr_wall);
pt_size(100, 100);
pt_color(c_blue);
pt_alpha(.8, .6, 0);
pt_life(seconds(2));

d_alarm[0] = 1;