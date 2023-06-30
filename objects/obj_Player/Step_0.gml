key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
var key_attack = ord("K");



var move = key_right - key_left;

hsp = move * kecepatan;

vsp = vsp + grv;

if(place_meeting(x,y+1,obj_tanah)) && (key_jump)
{
	vsp = -2;
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

//Animasi Flip
if (keyboard_check(ord("D")))
{
    flip_status = 1; // Menghadap ke kanan
}
else if (keyboard_check(ord("A")))
{
    flip_status = 0; // Menghadap ke kiri
}

// Perbarui arah flip dan kecepatan animasi
image_xscale = flip_status * 2 - 1; // Mengubah image_xscale antara 1 dan -1
image_speed = animation_speed;

//Naik Tangga 
if(key_up || key_down)
{
	if(place_meeting(x,y,obj_tangga)) tangga = true;
}
if(tangga)
{
	vsp = 0;
	hsp = 0;
	if(key_up) vsp = -2;
	if(key_down) vsp = 2;
	if(!place_meeting(x,y,obj_tangga)) tangga = false;
	if(key_jump) tangga = false;
}

//Animasi
if(!place_meeting(x,y+1,obj_tanah))
{
	sprite_index = spr_loncat;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
	
}
else
{
	image_speed = 0.1;
	if(hsp == 0)
	{
		sprite_index = spr_idle;
	}
	else
	{
		sprite_index = spr_lari;
	}
}
if (keyboard_check(ord("K"))) {
    sprite_index = spr_serang; // Ganti dengan sprite pemain saat menyerang
    image_speed = 5; // Kecepatan animasi serangan
    image_index = 0; // Mulai dari frame pertama
    attacking = true; // Tandai bahwa pemain sedang menyerang
}
if (sprite_index == spr_idle) {
    sprite_index = spr_idle; // Ganti dengan sprite pemain saat idle
    image_speed = 0; // Hentikan animasi
    attacking = false; // Tandai bahwa serangan selesai
}
var damage = 10;
var attack_range = 100;

if keyboard_check_pressed(key_attack) {
    var enemy = instance_position(x, y, obj_enemy); // Ganti "obj_enemy" dengan nama objek musuh yang sesuai

    if instance_exists(enemy) && distance_to_object(enemy) <= attack_range {
        enemy.Hp -= damage; // Mengurangi HP musuh

        if enemy.Hp <= 0 {
            instance_destroy(enemy); // Menghancurkan objek musuh jika HP-nya mencapai atau kurang dari 0
        }
    }
}



