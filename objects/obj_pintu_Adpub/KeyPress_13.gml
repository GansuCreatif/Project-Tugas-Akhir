/// @description Insert description here
// You can write your code in this editor
// Menentukan jarak antara pemain dan objek pintu
var jarak = distance_to_object(obj_player);

// Jika pemain mendekati objek pintu dalam jarak tertentu (misalnya, 32 piksel)
if (jarak <= 32)
{
    // Memindahkan pemain ke ruangan baru saat tombol Enter ditekan
    if (keyboard_check_pressed(vk_enter))
    {
        room_goto(nama_ruangan_tujuan);
    }
}
