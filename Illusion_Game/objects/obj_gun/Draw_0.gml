for (var i = 1; i <= munitions; i++) {
	draw_sprite(spr_bullet, image_index, x + (10 *i), y);	
}
draw_set_color(c_blue);
draw_text(362, 245, "Munitions: " + string(munitions)); 
