/// @description Remove from memory / Overwrite chunks

//If the world has changed in anyway, it will overwrite its chunk file
if buffer_md5(chunk_buffer,0,buffer_get_size(chunk_buffer)) != md5
{
	buffer_save(chunk_buffer,file_name);
}

//Clear from memory
buffer_delete(chunk_buffer);