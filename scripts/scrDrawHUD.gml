if instance_exists(Player)
{
//DRAW THE HUD HERE

with Player
{
draw_sprite(sprHealthBar,0,view_xview+20,view_yview+4)
draw_set_color(c_black)
draw_rectangle(view_xview+23+83,view_yview+7,view_xview+23+83*(Player.my_health/Player.maxhealth),view_yview+15,0)
draw_set_halign(fa_center)
draw_set_font(fntM)
draw_set_color(c_black)
draw_text(view_xview+23+44,view_yview+8,string(Player.my_health)+"/"+string(Player.maxhealth))
draw_set_color(c_white)
draw_text(view_xview+23+44,view_yview+7,string(Player.my_health)+"/"+string(Player.maxhealth))
if Player.race = 9
draw_text(view_xview+23+100,view_yview+8,string(Player.eats))
}

with Player2
{
draw_sprite(sprHealthBar,0,view_xview+160,view_yview+4)
draw_set_color(c_black)
draw_rectangle(view_xview+163+83,view_yview+7,view_xview+163+83*(Player2.my_health/Player2.maxhealth),view_yview+15,0)
draw_set_halign(fa_center)
draw_set_font(fntM)
draw_set_color(c_black)
draw_text(view_xview+93+114,view_yview+8,string(Player2.my_health)+"/"+string(Player2.maxhealth))
draw_set_color(c_white)
draw_text(view_xview+93+114,view_yview+7,string(Player2.my_health)+"/"+string(Player2.maxhealth))
}
if Player.bwep != 0
{
if Player.area = 2
{
draw_sprite_ext(Player.wep_sprt[Player.bwep],1,view_xview+63,view_yview+24,1,1,0,c_gray,1)
draw_sprite_ext(Player.wep_sprt[Player.bwep],1,view_xview+65,view_yview+24,1,1,0,c_gray,1)
draw_sprite_ext(Player.wep_sprt[Player.bwep],1,view_xview+64,view_yview+23,1,1,0,c_gray,1)
draw_sprite_ext(Player.wep_sprt[Player.bwep],1,view_xview+64,view_yview+25,1,1,0,c_gray,1)
}
draw_sprite_ext(Player.wep_sprt[Player.bwep],1,view_xview+64,view_yview+24,1,1,0,c_black,1)
}
draw_sprite(Player.wep_sprt[Player.wep],1,view_xview+29,view_yview+24)
draw_sprite(Player.wep_sprt[Player.wep],1,view_xview+27,view_yview+24)
draw_sprite(Player.wep_sprt[Player.wep],1,view_xview+28,view_yview+25)
draw_sprite(Player.wep_sprt[Player.wep],1,view_xview+28,view_yview+23)
draw_sprite_ext(Player.wep_sprt[Player.wep],1,view_xview+28,view_yview+24,1,1,0,c_black,1)


draw_sprite(sprExpBar,(Player.rad/(60*Player.level))*16,view_xview+4,view_yview+4)
draw_set_color(c_black)
draw_text(view_xview+11,view_yview+17-string_height("A")/2,string(Player.level))
draw_set_color(c_white)
draw_text(view_xview+11,view_yview+16-string_height("A")/2,string(Player.level))

draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+12,view_yview+37,string(scrAddZero(Player.ammo[1],2))+" "+string(scrAddZero(Player.ammo[2],1))+" "+string(scrAddZero(Player.ammo[3],1))+" "+string(scrAddZero(Player.ammo[4],1)))
draw_set_color(c_white)
draw_text(view_xview+12,view_yview+36,string(scrAddZero(Player.ammo[1],2))+" "+string(scrAddZero(Player.ammo[2],1))+" "+string(scrAddZero(Player.ammo[3],1))+" "+string(scrAddZero(Player.ammo[4],1)))

draw_sprite(sprAmmoIcons,0,view_xview+5,view_yview+36)
if Player.wep_type[Player.wep] = 1
draw_sprite(sprAmmoIconsWhite,0,view_xview+5,view_yview+36)
draw_sprite(sprAmmoIcons,1,view_xview+37,view_yview+36)
if Player.wep_type[Player.wep] = 2
draw_sprite(sprAmmoIconsWhite,1,view_xview+37,view_yview+36)
draw_sprite(sprAmmoIcons,2,view_xview+61,view_yview+36)
if Player.wep_type[Player.wep] = 3
draw_sprite(sprAmmoIconsWhite,2,view_xview+61,view_yview+36)
draw_sprite(sprAmmoIcons,3,view_xview+85,view_yview+36)
if Player.wep_type[Player.wep] = 4
draw_sprite(sprAmmoIconsWhite,3,view_xview+85,view_yview+36)

dir = 1
dix = 1
repeat(Player.maxskill)
{
if Player.skill_got[dir] = 1
{
draw_sprite_ext(sprSkillIconMini,dir,view_xview+view_wview-12-16*dix,view_yview+13,1,1,0,c_black,1)
draw_sprite_ext(sprSkillIconMini,dir,view_xview+view_wview-12-16*dix,view_yview+12,1,1,0,c_white,1)
dix += 1
}
dir += 1
}

}
else if !instance_exists(GenCont)
{
draw_set_font(fntM)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
gameover = "THE LAND REMAINS IN CHAOS##KILLS: "+string(BackCont.kills)+"#LEVEL: "+string(BackCont.area)+"_"+string(BackCont.subarea)+"#DIFFICULTY: "+string(BackCont.hard)+"##PRESS ENTER TO RESTART"
if keyboard_check_pressed(vk_enter)
{
sound_play(sndRestart)
game_restart()
}
draw_set_color(c_black)
draw_set_alpha(0.4)
draw_rectangle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,0)
draw_set_alpha(1)
draw_text(view_xview+view_wview/2,view_yview+view_hview/2-string_height("A")+1,string(gameover))
draw_set_color(c_white)
draw_text(view_xview+view_wview/2,view_yview+view_hview/2-string_height("A"),string(gameover))
draw_set_valign(fa_top)
}


//PICKUP STUFF
draw_set_halign(fa_center)
draw_set_font(fntM)
with WepPickup
{
if place_meeting(x,y,Player)
{
draw_sprite(sprEPickup,-1,x,y-7)
draw_set_color(c_black)
draw_text(x,y-30,string(name))
draw_set_color(c_white)
draw_text(x,y-31,string(name))

}
}
