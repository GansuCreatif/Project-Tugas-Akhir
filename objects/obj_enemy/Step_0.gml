
// Pergerakan berdasarkan arah saat ini
motion_set(direction, 3);

// Cek apakah musuh mencapai batas patroli
if x >= initialX + patrolDistance && direction == 0
{
    // Mengubah arah pergerakan ke kiri
    direction = 180;
    sprite_index = Enemy; // Mengubah sprite saat bergerak ke kiri
}
else if x <= initialX - patrolDistance && direction == 180
{
    // Mengubah arah pergerakan ke kanan
    direction = 0;
    sprite_index = Enemy; // Mengubah sprite saat bergerak ke kanan
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_tanah))
{
	while(!place_meeting(x+sign(hsp),y,obj_tanah))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Movement
if (place_meeting(x,y+vsp,obj_tanah))
{
	while(!place_meeting(x,y+sign(vsp),obj_tanah))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
/// Step Event - Objek Musuh
var collisionDistance = 30; // Jarak tabrakan antara musuh dan pemain

// Memeriksa tabrakan dengan pemain
if place_meeting(x, y, obj_Player)
{
    // Menghancurkan objek pemain
    instance_destroy(obj_Player);
    // Tambahkan tindakan lain yang ingin Anda lakukan ketika musuh menabrak pemain
}