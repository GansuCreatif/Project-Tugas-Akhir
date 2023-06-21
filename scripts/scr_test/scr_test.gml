/*hsp = dir * spd;
vsp = vsp + grv;

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_tanah))
{
	while(!place_meeting(x+sign(hsp),y,obj_tanah))
	{
		x = x + sign(hsp);
	}
	dir = dir * -1;
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
		if(dont_fall && !position_meeting(x+(sprite_width/2)*dir,y+(sprite_height/2)+7,obj_tanah))
		{
			dir = dir * -1;
		}
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,obj_tanah))
{
	sprite_index = Main_Character_Jump;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
	
}*/
/*
dir =-1;
hsp = 0;
vsp = 0;
grv = 0.3;
spd = 3;
dont_fall = true;*/