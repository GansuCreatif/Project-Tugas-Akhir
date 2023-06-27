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


var detectionRadius = 100; // Jarak deteksi musuh terhadap pemain

// Menghitung jarak antara musuh dan pemain
var distanceToPlayer = point_distance(x, y, obj_Player.x, obj_Player.y);

if distanceToPlayer < detectionRadius
{
    // Jika pemain berada dalam jarak deteksi musuh
    alarm[0] = alarmDuration; // Mengatur alarm[0] untuk durasi yang telah ditentukan
    /// Step Event - Objek Musuh
	var targetX = obj_Player.x; // Koordinat X pemain
	var targetY = obj_Player.y; // Koordinat Y pemain

	// Menghitung arah pergerakan musuh menuju pemain
	var moveDirection = point_direction(x, y, targetX, targetY);

	// Mengatur kecepatan gerakan musuh
	var moveSpeed = 3; // Kecepatan gerakan musuh

	// Mengatur gerakan musuh berdasarkan arah menuju pemain
	motion_set(moveDirection, moveSpeed);
	/// Step Event - Objek Musuh
	var detectionRadius = 50; // Jarak deteksi musuh terhadap pemain

	// Menghitung jarak antara musuh dan pemain
	var distanceToPlayer = point_distance(x, y, obj_Player.x, obj_Player.y);

	if distanceToPlayer < detectionRadius
	{
    // Jika pemain berada dalam jarak deteksi musuh
    instance_destroy(); // Menghancurkan objek musuh
    // Tambahkan tindakan lain yang ingin Anda lakukan ketika musuh mendekati pemain
	}
}