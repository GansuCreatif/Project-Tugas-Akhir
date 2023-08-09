draw_sprite_stretched
(
	spr_inventory_sampah, //sprite
	0, //frame
	x-6, //koordinat x
	y-6, //koordinat y
	20+rowLength*36, //Lebar inventory
	20+(((INVENTORY_SLOTS-1) div rowLength)+1)*36 //Tinggi inventory

);

for (var i = 0; i < INVENTORY_SLOTS; i += 1)
{
	var xx = x + (i mod rowLength) * 36 + 2;
	var yy = y + (i div rowLength) * 36 + 2;
	var hover = (Obj_Mouse_Organik.inventoryHover == id) && (Obj_Mouse_Organik.slotHover == i)
	draw_sprite(spr_slots,0,xx,yy)
	if(inventory[i] !=-1)
	{
		var alpha = 1.0;
		if(Obj_Mouse_Organik.inventoryDrag == id) && (Obj_Mouse_Organik.slotHover == i) alpha = 0.5;
		draw_set_alpha(alpha);
		draw_sprite(spr_Sampah_organik,inventory[i],xx,yy);
		draw_set_alpha(1.0);
	}
}