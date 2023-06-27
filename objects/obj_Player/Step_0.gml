//Player_input
key_left =  keyboard_check(ord("A"));
key_right =  keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_jump = keyboard_check_pressed(vk_space);


//Calculate Movement
var move = key_right - key_left;

 
hsp = move * kecepatan_jalan;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_tanah)) && (key_jump)
{
	vsp = -7;
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

//Animation
if (!place_meeting(x,y+1,obj_tanah))
{
	sprite_index = Main_Character_Jump;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
	
}
else
{
	image_speed = 0.1;
	if(hsp == 0)
	{
		sprite_index = Main_Character_Idle;
	}
	else
	{
		sprite_index = Main_Character_Walk;
	}
}



image_xscale = flip_direction;

if (keyboard_check(ord("A"))) {
    // Bergerak ke kiri
    flip_direction = -1;  // Set arah ke kiri
} else if (keyboard_check(ord("D"))){
    // Bergerak ke kanan
    flip_direction = 1;  // Set arah ke kanan
}
// Draw Event
draw_sprite(Main_Character_Idle, image_index, x, y);  // Menggambar sprite

//Naik Tangga
if (key_down || key_up)
{
	if place_meeting(x,y,obj_tangga) tangga = true;
}
if(tangga)
{
	vsp = 0;
	//hsp = 0;
	if (key_up) vsp = -2;
	if (key_down) vsp = 2;
	if !place_meeting(x,y,obj_tangga) tangga = false;
	if (key_jump) tangga = false;
}

var detectionRadius = 50; // Jarak deteksi pemain terhadap musuh

// Menghitung jarak antara pemain dan musuh
var distanceToEnemy = point_distance(x, y, obj_enemy.x, obj_enemy.y);

if distanceToEnemy < detectionRadius
{
    // Jika musuh berada dalam jarak deteksi pemain
    instance_destroy(); // Menghancurkan objek pemain
}

