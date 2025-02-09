// Position du premier bouton
var btn1_x = x + 100;
var btn1_y = y + 100;

// Position du deuxième bouton
var btn2_x = x - 100;
var btn2_y = y + 100;

// Créer les deux nouveaux boutons
instance_create_layer(btn1_x, btn1_y, layer, EasyButton);
instance_create_layer(btn2_x, btn2_y, layer, HardButton);
