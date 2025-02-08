/// @description Variables

width = obj_world.chunk_size;
height = obj_world.chunk_size;

buffer_size = width*height;
tile_size = obj_world.tile_size;
file_name = "chunk/chunk "+string(x)+" "+string(y); //FOLDER WHERE CHUNK FILES ARE STORED

if file_exists(file_name) //Load chunk if it exists
{
	chunk_buffer = buffer_load(file_name);
	md5 = buffer_md5(chunk_buffer,0,buffer_get_size(chunk_buffer));
}
else //Create chunk if it doesn't exist
{
	chunk_buffer = buffer_create(buffer_size,buffer_grow,1)

	//This randomly generates the world
	for(var i=0;i<width;i++)
	for(var j=0;j<height;j++)
	{
		buffer_write(chunk_buffer,buffer_u8,irandom(45));
	}
	buffer_save(chunk_buffer,file_name);
	md5 = buffer_md5(chunk_buffer,0,buffer_get_size(chunk_buffer));
}
