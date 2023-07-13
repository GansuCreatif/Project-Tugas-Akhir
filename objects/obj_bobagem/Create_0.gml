hsp = 0;
vsp = 0;
grv = 0.3;
nyawa_enemy = 100;
is_attacking = false;
damage_enemy = 5;
patrol_point_A_x = x - 300; // Koordinat x patroli A (100 piksel ke kiri dari posisi awal musuh)
patrol_point_B_x = x + 30; // Koordinat x patroli B (100 piksel ke kanan dari posisi awal musuh)
patrol_speed = 2; // Kecepatan patroli
patrol_direction = 1; // Arah patroli (1 = ke kanan, -1 = ke kiri)

// Inisialisasi posisi awal patroli
x = patrol_point_A_x;
 
itemDrop = noone;