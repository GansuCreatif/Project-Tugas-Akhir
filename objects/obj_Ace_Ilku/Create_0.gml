hsp = 0;
vsp = 0;
grv = 0.3;
Hp = 200;
is_attacking = false;
damage_ace = 20;
patrol_point_A_x = x - 10; // Koordinat x patroli A (100 piksel ke kiri dari posisi awal musuh)
patrol_point_B_x = x + 100; // Koordinat x patroli B (100 piksel ke kanan dari posisi awal musuh)
patrol_speed = 2; // Kecepatan patroli
patrol_direction = 1; // Arah patroli (1 = ke kanan, -1 = ke kiri)

// Inisialisasi posisi awal patroli
x = patrol_point_A_x;