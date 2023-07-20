/// @description Insert description here
// You can write your code in this editor
var item_index = 0; // Ganti dengan indeks item yang ingin Anda atur kuantitasnya
var amount_to_add = 1; // Jumlah kuantitas yang ingin ditambahkan

obj_player.inventory_item[item_index] += amount_to_add; // Tambahkan kuantitas item ke inventory player
instance_destroy(); // Hancurkan objek "obj_Kulit_buah" setelah diambil