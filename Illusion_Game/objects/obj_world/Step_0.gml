/// @description DS Grid Stuff

//Load and unload Chunks depending on where the player is
var chunk_x = obj_player.x div (chunk_size*tile_size)
var chunk_y = obj_player.y div (chunk_size*tile_size)

for(i=chunk_x-load_radius;i<=chunk_x+load_radius;i++)
for(j=chunk_y-load_radius;j<=chunk_y+load_radius;j++)
{
	if ds_grid_get(chunks_grid,i,j) == noone
	{
		var chunk  = instance_create_depth(i,j,depth,obj_chunk) //THIS CREATES THE CHUNK. obj_chunk loads the chunk.
		ds_grid_set(chunks_grid,i,j,chunk)
	}
}

//Destroy chunk if not near player
with(obj_chunk)
{
	if (abs(chunk_x-x) > obj_world.load_radius) or (abs(chunk_y-y) > obj_world.load_radius)
	{
		ds_grid_set(obj_world.chunks_grid,x,y,noone)
		instance_destroy();
	}		
}