width = 50; //Width of the world in chunks (how many total chunks wide) You can make this A LOT larger.
height = 50; //Height of the world in chunks (how many total chunks high)
chunk_size = 8; //How many tiles are in each chunk, you can set this to be A LOT larger.
tile_size = 16; //How many pixels are in each tile. Tiles are 16x16, can be any size.

load_radius = 1; //How many chunks around your player do you want to load. Change this to higher.

chunks_grid = ds_grid_create(width,height); //A grid that holds info on all the chunks that are loaded and not loaded
ds_grid_clear(chunks_grid,noone); //Set grid to -4 (nothing is loaded)
