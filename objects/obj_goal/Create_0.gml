skip = -1;
skipCount = 0;

partType = pt_new();
pt_shape(pt_shape_sphere);
pt_size(.5, .5);
pt_color(c_yellow);
pt_alpha(1, 0);
pt_life(seconds(.5));

partTypeSkip = pt_new();
pt_shape(pt_shape_sphere);
pt_size(.25, .25);
pt_color(c_silver);
pt_alpha(1, 0);
pt_life(seconds(.5));

alarm[0] = 1;