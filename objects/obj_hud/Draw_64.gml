draw_set_color(c_white);
draw_set_font(fnt_hud);
draw_set_halign(0);
var scoreStr = "Score: " + string(global.gameScore);
var timeStr = "Time: " + string(floor(timer / 60) + 1);

draw_text(view_wport[0] - string_width(scoreStr), 0, scoreStr);
draw_text(view_wport[0] - string_width(timeStr), 20, timeStr);


draw_text(0, 0, "Slowmo");
draw_rectangle(0, 20, global.slowdown, 40, false);

draw_text(0, view_hport[0] - 20, string(global.levelNumber) + ". " + global.levelName);