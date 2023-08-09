// Kode untuk kembali ke "Room Sebelumnya" dari "Room Inventory"
if keyboard_check_pressed(vk_tab) // Atau tombol kembali pada perangkat seluler
{
    room_goto(global.previous_room); // Kembali ke kamar sebelumnya menggunakan variabel global
}
