
// Daftar item yang dapat dijatuhkan
var itemList = [
    obj_Kulit_buah,  //objek item 
    obj_Sisa_sayuran,  //objek item
	obj_Daging,			//objek item 
    obj_Buah_busuk,	
];

// Tentukan peluang drop untuk setiap item
var dropChances = [
    90,  // Peluang drop item 1 
    85,  // Peluang drop item 2 
	75,	// Peluang drop item 3
	75, // Peluang drop item 4
];

// Buat item baru jika ada item yang dijatuhkan
var i;
for (i = 0; i < array_length_1d(itemList); i++) {
    if (random(100) < dropChances[i]) {
        var newItem = instance_create_layer(x, y, "Drop_Item", itemList[i]);
		itemDrop[i] = newItem; // Simpan item yang dijatuhkan ke dalam array itemDrop pada objek musuh
	   }
}