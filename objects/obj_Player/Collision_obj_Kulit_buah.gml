/// @description Insert description here
// You can write your code in this editor
//objek pemain jika ingin mengambil item
if instance_exists(obj_Kulit_buah) && place_meeting(x, y, obj_Kulit_buah) {
    // Tambahkan skrip di sini untuk mengambil item 1
    instance_destroy(obj_Kulit_buah); // Hapus item setelah diambil
}/*else if instance_exists(obj_Sisa_sayuran) && place_meeting(x, y, obj_Sisa_sayuran) {
    // Tambahkan skrip di sini untuk mengambil item 2
    instance_destroy(obj_Sisa_sayuran); // Hapus item setelah diambil
}else if instance_exists(obj_Daging) && place_meeting(x, y, obj_Daging) {
    // Tambahkan skrip di sini untuk mengambil item 3
    instance_destroy(obj_Daging); // Hapus item setelah diambil
}else if instance_exists(obj_Buah_busuk) && place_meeting(x, y, obj_Buah_busuk) {
    // Tambahkan skrip di sini untuk mengambil item 4
    instance_destroy(obj_Buah_busuk); // Hapus item setelah diambil
}*/
