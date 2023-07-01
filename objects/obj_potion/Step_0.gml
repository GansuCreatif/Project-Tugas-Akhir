/// @description Insert description here
// You can write your code in this editor
var player = instance_place(x, y, obj_player); // Mendeteksi apakah pemain berada di posisi potion

if (player != noone && keyboard_check_pressed(ord("E"))) {
	player.hp += healingAmount; // Menambahkan jumlah penyembuhan ke HP pemain
    instance_destroy(); // Menghancurkan objek potion setelah digunakan
}