/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x, y + 1, obj_tanah) {
    isOnGround = false;
} else {
    isOnGround = true;
}

// Jika item berada di tanah, nonaktifkan gravitasi dan pergerakan
if isOnGround {
    gravity = 0;
    hspeed = 0;
    vspeed = 0;
} else {
    gravity = 0.5; // Atur kekuatan gravitasi sesuai kebutuhan
}