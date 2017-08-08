event_inherited();

partSys = part_system_create();
normalPart = pt_new();
pt_shape(pt_shape_flare);
pt_size(.05, .1);
pt_color(c_red, c_yellow, c_blue);
pt_speed(.2, .5);
pt_alpha(1, 0);
pt_life(seconds(.2), seconds(.4));
pt_direction(PT.Any);

lastx = x;
lasty = y;

slowing = false;
gain = 1;
cam = view_get_camera(0);
viewWidth = camera_get_view_width(cam);
viewHeight = camera_get_view_height(cam);
instance_create_depth(x, y, depth, obj_camera);
instance_create_depth(x, y, depth + 1, obj_hud);
instance_create_depth(x, y, depth + 1, obj_background);