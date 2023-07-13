key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_attack = keyboard_check_pressed(ord("K"));



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
    image_index = 1; // Mulai dari frame pertama
    attacking = true; // Tandai bahwa pemain sedang menyerang
}
if (sprite_index == spr_idle) {
    sprite_index = spr_idle; // Ganti dengan sprite pemain saat idle
    image_speed = 0; // Hentikan animasi
    attacking = false; // Tandai bahwa serangan selesai
}

// Memeriksa apakah pemain menekan tombol serangan
if (keyboard_check_pressed(ord("K"))) {
    // Memeriksa apakah stamina cukup untuk menyerang
    if (stamina >= stamina_depletion_rate) {
        // Mengurangi stamina saat menyerang
        stamina -= stamina_depletion_rate;
        // Mengatur timer serangan
        attack_timer = attack_cooldown;
        
        // Lakukan aksi menyerang terhadap musuh di sini
        if keyboard_check_pressed(key_attack) {
			var enemy = instance_place(x, y, obj_bobagem); 
		if instance_exists(enemy) {
			enemy.nyawa_enemy -= damage_pemain; // Ganti "damage" dengan jumlah damage yang diinginkan
		 if enemy.nyawa_enemy <= 0 {
			 instance_destroy(enemy); // Menghancurkan objek musuh
				}
			}
		}
		if keyboard_check_pressed(key_attack) {
			var enemy = instance_place(x, y, obj_Ace_Ilku); 
		if instance_exists(enemy) {
			enemy.Hp -= damage_pemain; // Ganti "damage" dengan jumlah damage yang diinginkan
    
		 if enemy.Hp <= 0 {
			 instance_destroy(enemy); // Menghancurkan objek musuh
				}
			}
		}
		if keyboard_check_pressed(key_attack) {
			 var enemy = instance_place(x, y, obj_enemy_ranger); 
		if instance_exists(enemy) {
			 enemy.nyawa_enemy -= damage_pemain; // Ganti "damage" dengan jumlah damage yang diinginkan
    
		 if enemy.nyawa_enemy <= 0 {
			 instance_destroy(enemy); // Menghancurkan objek musuh
				}
			}
		}
    }
}

// Mengisi stamina saat tidak menyerang
if (attack_timer <= 0 && stamina < stamina_max) {
    stamina += stamina_regeneration_rate;
}

// Mengurangi timer serangan jika masih dalam cooldown
if (attack_timer > 0) {
    attack_timer--;
}
if (hp <= 0) {
	hp = 0;
	show_message("Anda Kalah");
    game_restart();
}

if keyboard_check_pressed(ord("I")) { // Ganti dengan tombol yang ingin Anda gunakan untuk membuka inventaris
    global.inventoryVisible = !global.inventoryVisible; // Mengubah status tampilan inventaris saat tombol ditekan
    if global.inventoryVisible {
        room_goto(room_inventory); // Pindah ke room inventaris jika tampilan inventaris diaktifkan
    } else {
        room_goto_previous(); // Kembali ke room sebelumnya jika tampilan inventaris dinonaktifkan
    }
}
