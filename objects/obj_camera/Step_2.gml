move_towards_point(obj_player.x, obj_player.y, distance_to_object(obj_player) / easing)
camera_set_view_pos(view_camera[0], x - (view_wport[0] / 2), y - (view_hport[0] / 2));