hsp = 0;
vsp = 0;
grv = 0.3;
nyawa_enemy = 65;
is_attacking = false;
damage_enemy = 10;
patrol_point_A_x = x - 300; // Koordinat x patroli A
patrol_point_B_x = x + 30; // Koordinat x patroli B 
patrol_speed = 1; // Kecepatan patroli
patrol_direction = 1; // Arah patroli (1 = ke kanan, -1 = ke kiri)

// Inisialisasi posisi awal patroli
x = patrol_point_A_x;
 
itemDrop = noone;