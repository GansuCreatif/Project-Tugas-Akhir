// Daftar item yang dapat dijatuhkan
var itemList = [
    obj_Gelas,  //objek item 
    obj_Kardus,  //objek item
	obj_Kertas,			//objek item 
    obj_Plastik,	
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