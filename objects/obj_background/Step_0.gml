var blue = max(0, 255 - obj_player.d_speed * 10);
var red = min(255, obj_player.d_speed * 10);
var col = make_color_rgb(red, 0, blue);
pt_with(bgPart);
pt_color(col);