//Horizontal Collision
if (place_meeting(x+hsp,y,obj_tanah))
{
	while(!place_meeting(x+sign(hsp),y,obj_tanah))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Movement
if (place_meeting(x,y+vsp,obj_tanah))
{
	while(!place_meeting(x,y+sign(vsp),obj_tanah))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
// Mendapatkan jarak antara musuh dan pemain
var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

// Mendekati pemain jika jarak cukup dekat
if (distance_to_player < 50) { // Sesuaikan jarak sesuai preferensi Anda
    // Memulai serangan jika tidak sedang menyerang
    if (!is_attacking) {
        is_attacking = true; // Set status serangan menjadi true

        // Atur animasi serangan
        sprite_index = Enemy_Attack; // Ganti sprite menjadi sprite serangan
        image_speed = 0.1; // Kecepatan animasi serangan
        image_index = 0; // Reset frame animasi serangan

        // Lakukan aksi menyerang terhadap pemain di sini
        obj_player.hp -= damage_enemy; // Contoh: Mengurangi nyawa pemain 
    }
} else {
    // Menghentikan serangan jika sedang menyerang
    if (is_attacking) {
        is_attacking = false; // Set status serangan menjadi false

        // Mengembalikan animasi berjalan
        sprite_index = Enemy_Walk; // Ganti sprite menjadi sprite berjalan
        image_speed = 0.1; // Kecepatan animasi berjalan
        image_index = 0; // Reset frame animasi berjalan
    }
}

// Animasi Serangan
if (is_attacking) {
    // Jika sedang menyerang, jalankan animasi serangan
    if (image_index >= image_number - 1) {
        // Jika mencapai frame terakhir animasi serangan, hentikan serangan
        is_attacking = false; // Set status serangan menjadi false

        // Mengembalikan animasi berjalan
        sprite_index = Enemy_Walk; // Ganti sprite menjadi sprite berjalan
        image_speed = 0.1; // Kecepatan animasi berjalan
        image_index = 0; // Reset frame animasi berjalan
    } else {
        // Pindah ke frame animasi serangan berikutnya
        image_index += 1;
    }
}
// Bergerak antara patroli A dan B
x += patrol_speed * patrol_direction;

// Mengecek apakah mencapai patroli A atau B
if (x <= patrol_point_A_x || x >= patrol_point_B_x) {
    patrol_direction *= -1; // Mengubah arah patroli
}
// Mengecek arah patroli dan membalikkan sprite
if (patrol_direction == 1) {
    image_xscale = 1; // Tidak ada perubahan pada skala sprite
} else {
    image_xscale = 1; // Memflip sprite secara horizontal
}
