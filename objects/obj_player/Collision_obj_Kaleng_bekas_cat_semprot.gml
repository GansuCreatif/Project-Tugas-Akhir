//objek pemain  ingin mengambil item
if instance_exists(obj_Kaleng_bekas_cat_semprot) && place_meeting(x, y, obj_Kaleng_bekas_cat_semprot) {
    //  skrip  mengambil item 1
    instance_destroy( obj_Kaleng_bekas_cat_semprot); // Hapus item setelah diambil
}else if instance_exists(obj_Limbah_hitam) && place_meeting(x, y, obj_Limbah_hitam) {
    //  skrip  untuk mengambil item 2
    instance_destroy(obj_Slag_nikel); // Hapus item setelah diambil
}else if instance_exists(obj_Slag_nikel) && place_meeting(x, y, obj_Slag_nikel) {
    //  skrip untuk mengambil item 2
    instance_destroy(obj_Kertas); // Hapus item setelah diambil
}
