//objek pemain  ingin mengambil item
if instance_exists(obj_Kulit_buah) && place_meeting(x, y, obj_Kulit_buah) {
    //  skrip  mengambil item 1
    instance_destroy(obj_Kulit_buah); // Hapus item setelah diambil
}else if instance_exists(obj_Sisa_sayuran) && place_meeting(x, y, obj_Sisa_sayuran) {
    //  skrip  untuk mengambil item 2
    instance_destroy(obj_Sisa_sayuran); // Hapus item setelah diambil
}else if instance_exists(obj_Daging) && place_meeting(x, y, obj_Daging) {
    //  skrip untuk mengambil item 2
    instance_destroy(obj_Daging); // Hapus item setelah diambil
}else if instance_exists(obj_Buah_busuk) && place_meeting(x, y, obj_Buah_busuk) {
    // skrip  untuk mengambil item 2
    instance_destroy(obj_Buah_busuk); // Hapus item setelah diambil
}
