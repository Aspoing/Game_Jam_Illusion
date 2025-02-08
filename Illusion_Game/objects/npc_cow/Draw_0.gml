var _cs_x = 24;
var _cs_y = 16;

var _animLength = 2;
if (floor(frame_x + anim_speed) <= _animLength - 1) frame_x += anim_speed;
else frame_x = 0


draw_sprite_part(sprite_index, 0, floor(frame_x) * _cs_x, frame_y * _cs_y, _cs_x, _cs_y, x, y);