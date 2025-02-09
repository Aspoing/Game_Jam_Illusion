spawn_timer = room_speed * 8;  // Tous les 3 secondes
randomize();

random_x = irandom_range(0, 480);
random_y = irandom_range(0, 270);
instance_create_layer(random_x, random_y, "I_main", obj_1player);

i = 0
while i <= 15 {
	random_x = irandom_range(0, 480);
	random_y = irandom_range(0, 270);
	instance_create_layer(random_x, random_y, "Instances_1", obj_bonhomme);
	i += 1
}