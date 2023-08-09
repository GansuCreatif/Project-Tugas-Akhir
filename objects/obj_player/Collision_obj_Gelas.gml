//objek pemain  ingin mengambil item
if instance_exists(obj_Gelas) && place_meeting(x, y, obj_Gelas) {
    //  skrip  mengambil item 1
    instance_destroy( obj_Gelas); // Hapus item setelah diambil
}else if instance_exists(obj_Kardus) && place_meeting(x, y, obj_Kardus) {
    //  skrip  untuk mengambil item 2
    instance_destroy(obj_Kertas); // Hapus item setelah diambil
}else if instance_exists(obj_Kertas) && place_meeting(x, y, obj_Kertas) {
    //  skrip untuk mengambil item 2
    instance_destroy(obj_Kertas); // Hapus item setelah diambil
}else if instance_exists(obj_Plastik) && place_meeting(x, y, obj_Plastik) {
    // skrip  untuk mengambil item 2
    instance_destroy(obj_Plastik); // Hapus item setelah diambil
}
