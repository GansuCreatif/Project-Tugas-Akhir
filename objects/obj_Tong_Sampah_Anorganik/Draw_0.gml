if (!visible) return;  // Jika inventori tidak terlihat, hentikan pembuatan tampilan

// Gambar latar belakang inventori
draw_sprite(sprite_index, image_index, x, y);

// Menggambar informasi item di setiap slot inventori
for (var i = 0; i < inventory_size; i++) {
    var item = instance_find(obj_Kulit_buah, i);
    if (item) {
        draw_text(x + 10 + (i * 50), y + 10, item.item_name);
        draw_text(x + 10 + (i * 50), y + 30, string(item.item_amount));
    }
}
