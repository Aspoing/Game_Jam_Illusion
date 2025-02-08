/// @description Change tile to 0 

//This exists so you can change the tiles, unload the chunk, reload and see that it saves..
var x1 = x*(tile_size*width);
var y1 = y*(tile_size*height);
var x2 = x1+(tile_size*width);
var y2 = y1+(tile_size*height);

if point_in_rectangle(mouse_x,mouse_y,x1,y1,x2,y2)
{
	var xx = (mouse_x-x1) div tile_size
	var yy = (mouse_y-y1) div tile_size
	
	var n = yy+(xx*height)
	buffer_seek(chunk_buffer,buffer_seek_start,n)
	buffer_write(chunk_buffer,buffer_u8,0);
}
