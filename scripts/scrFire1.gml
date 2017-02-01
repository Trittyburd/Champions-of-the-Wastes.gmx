var joy_x = gamepad_axis_value(0, gp_axisrh) + x;
var joy_y = gamepad_axis_value(0, gp_axisrv) + y;

var joy_x1 = -gamepad_axis_value(1, gp_axisrh) + x;
var joy_y1 = gamepad_axis_value(1, gp_axisrv) + y;


can_shoot = 0
//REVOLVER
if wep = 1
{
if Player.cont = 0
{
sound_play(sndPistol)
alarm[0] = 5
ammo[wep_type[wep]] -= 1
with instance_create(x,y,Shell)

motion_add(point_direction(x,y,joy_x,joy_y)+other.right*100+random(50)-25,2+random(2))

with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x,joy_y)+random(8)-4,16)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 4
}
if Player.cont = 1
{
sound_play(sndPistol)
alarm[0] = 5
ammo[wep_type[wep]] -= 1
with instance_create(x,y,Shell)

motion_add(point_direction(x,y, joy_x1 ,joy_y1)+other.right*100+random(50)-25,2+random(2))
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)+random(8)-4,16)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 4
}
}

//TRIPLE MACHINEGUN
if wep = 2
{

if Player.cont = 0
{
sound_play(sndMachinegunLow)
alarm[0] = 3
repeat(3)
{
with instance_create(x,y,Shell)
{
motion_add(point_direction(x,y,joy_x,joy_y)+other.right*100+random(70)-35,2+random(2))

}
ammo[wep_type[wep]] -= 3
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x,joy_y)+random(6)-3,16)
image_angle = direction}
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x,joy_y)+20+random(6)-3,16)
image_angle = direction}
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x,joy_y)-20+random(6)-3,16)
}

image_angle = direction




BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 4
}
}
if Player.cont = 1
{
sound_play(sndMachinegunLow)
alarm[0] = 3
repeat(3)
{
with instance_create(x,y,Shell)
{
motion_add(point_direction(x,y,joy_x1   ,joy_y1)+other.right*100+random(70)-35,2+random(2))

}
ammo[wep_type[wep]] -= 3
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)+random(6)-3,16)
image_angle = direction}
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)+20+random(6)-3,16)
image_angle = direction}
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)-20+random(6)-3,16)
}

image_angle = direction




BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 4
}
}
}

//SLEDGEHAMMER
if wep = 3
{
if Player.cont = 0
{
alarm[0] = 20
sound_play(sndHammer)

instance_create(x,y,Dust)

with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5

motion_add(point_direction(x,y,joy_x,joy_y),2+longarms)
image_angle = direction}

wepangle = -wepangle
motion_add(point_direction(x,y,joy_x,joy_y),6)
BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,joy_x,joy_y))
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,joy_x,joy_y))
BackCont.shake += 1
}
if Player.cont = 1
{
alarm[0] = 20
sound_play(sndHammer)

instance_create(x,y,Dust)

with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5

motion_add(point_direction(x,y,joy_x1   ,joy_y1),2+longarms)
image_angle = direction}

wepangle = -wepangle
motion_add(point_direction(x,y,joy_x1   ,joy_y1),6)
BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,joy_x1   ,joy_y1))
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,joy_x1   ,joy_y1))
BackCont.shake += 1
}
}

//MACHINEGUN
if wep = 4
{
if Player.cont = 0
{
sound_play(sndMachinegun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,joy_x,joy_y)+other.right*100+random(50)-25,2+random(2))

alarm[0] = 5
ammo[wep_type[wep]] -=1
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x,joy_y)+random(12)-6,16)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 3
}
if Player.cont = 1
{
sound_play(sndMachinegun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,joy_x1   ,joy_y1)+other.right*100+random(50)-25,2+random(2))

alarm[0] = 5
ammo[wep_type[wep]] -=1
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)+random(12)-6,16)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 3
}


}

//SHOTGUN
if wep = 5
{
if Player.cont = 0
{
sound_play(sndShotgun)
alarm[0] = 20
ammo[wep_type[wep]] -=1
repeat(6)
{
with instance_create(x,y,Bullet2P2)
{motion_add(point_direction(x,y,joy_x,joy_y)+random(40)-20,12+random(6))
image_angle = direction}
}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 8
}
if Player.cont = 1
{
sound_play(sndShotgun)
alarm[0] = 20
ammo[wep_type[wep]] -=1
repeat(6)
{
with instance_create(x,y,Bullet2P2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)+random(40)-20,12+random(6))
image_angle = direction}
}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 8
}
}


//CROSSBOW
if wep = 6
{
if Player.cont = 0
{
sound_play(sndCrossbow)
alarm[0] = 25
ammo[wep_type[wep]] -=1
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x,joy_y),24)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 4
}
if Player.cont = 1
{
sound_play(sndCrossbow)
alarm[0] = 25
ammo[wep_type[wep]] -=1
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1),24)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 4
}
}

//NADER
if wep = 7
{
if Player.cont = 0
{
sound_play(sndGrenade)
alarm[0] = 20
ammo[wep_type[wep]] -=1
with instance_create(x,y,GrenadeP2)
{
sticky = 0
motion_add(point_direction(x,y,joy_x,joy_y)+random(6)-3,10)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 2
}
if Player.cont = 1
{
sound_play(sndGrenade)
alarm[0] = 20
ammo[wep_type[wep]] -=1
with instance_create(x,y,GrenadeP2)
{
sticky = 0
motion_add(point_direction(x,y,joy_x1   ,joy_y1)+random(6)-3,10)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 2
}
}

//SUPER SHOTGUN
if wep = 8
{
if Player.cont = 0
{
sound_play(sndShotgun)
sound_play(sndShotgun)

alarm[0] = 35
ammo[wep_type[wep]] -=2
repeat(12)
{
with instance_create(x,y,Bullet2P2)
{motion_add(point_direction(x,y,joy_x,joy_y)+random(50)-30,12+random(6))
image_angle = direction}
}

BackCont.viewx2 += lengthdir_x(15,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(15,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 16
}
if Player.cont = 1
{
sound_play(sndShotgun)
sound_play(sndShotgun)

alarm[0] = 35
ammo[wep_type[wep]] -=2
repeat(12)
{
with instance_create(x,y,Bullet2P2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)+random(50)-30,12+random(6))
image_angle = direction}
}

BackCont.viewx2 += lengthdir_x(15,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(15,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 16
}
}

//MINIGUN
if wep = 9
{
if Player.cont = 0
{
sound_play(sndMachinegun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,joy_x,joy_y)+other.right*100+random(80)-40,3+random(2))

alarm[0] = 1
ammo[wep_type[wep]] -=1
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x,joy_y)+random(20)-10,16)
image_angle = direction}
motion_add(point_direction(x,y,joy_x,joy_y)+180,0.6)
BackCont.viewx2 += lengthdir_x(7,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(7,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 4
}
if Player.cont = 1
{
sound_play(sndMachinegun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,joy_x1   ,joy_y1)+other.right*100+random(80)-40,3+random(2))

alarm[0] = 1
ammo[wep_type[wep]] -=1
with instance_create(x,y,Bullet1P2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)+random(20)-10,16)
image_angle = direction}
motion_add(point_direction(x,y,joy_x1   ,joy_y1)+180,0.6)
BackCont.viewx2 += lengthdir_x(7,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(7,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 4
}
}

//AUTO SHOTGUN
if wep = 10
{
if Player.cont = 0
{
sound_play(sndShotgun)
alarm[0] = 4
ammo[wep_type[wep]] -=1
repeat(5)
{
with instance_create(x,y,Bullet2P2)
{motion_add(point_direction(x,y,joy_x,joy_y)+random(30)-15,12+random(6))
image_angle = direction}
}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 8
}
if Player.cont = 1
{
sound_play(sndShotgun)
alarm[0] = 4
ammo[wep_type[wep]] -=1
repeat(5)
{
with instance_create(x,y,Bullet2P2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)+random(30)-15,12+random(6))
image_angle = direction}
}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 8
}
}

//AUTO CROSSBOW
if wep = 11
{
if Player.cont = 0
{
sound_play(sndCrossbow)
alarm[0] = 8
ammo[wep_type[wep]] -=1
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x,joy_y)+random(4)-2,24)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 5
}
if Player.cont = 1
{
sound_play(sndCrossbow)
alarm[0] = 8
ammo[wep_type[wep]] -=1
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x, y, joy_x1  , joy_y1)+random(4)-2,24)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 5
}
}

//SUPER CROSSBOW
if wep = 12
{
if Player.cont = 0
{
sound_play(sndCrossbow)
alarm[0] = 30
ammo[wep_type[wep]] -= 5
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x,joy_y),24)
image_angle = direction}
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x,joy_y)+5,24)
image_angle = direction}
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x,joy_y)-5,24)
image_angle = direction}
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x,joy_y)+10,24)
image_angle = direction}
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x,joy_y)-10,24)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(60,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(60,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 14
}
if Player.cont = 1
{
sound_play(sndCrossbow)
alarm[0] = 30
ammo[wep_type[wep]] -= 5
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1),24)
image_angle = direction}
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)+5,24)
image_angle = direction}
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)-5,24)
image_angle = direction}
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)+10,24)
image_angle = direction}
with instance_create(x,y,BoltP2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1)-10,24)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(60,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(60,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 14
}
}


//SHOVEL
if wep = 13
{
if Player.cont = 0
{
alarm[0] = 45
sound_play(sndHammer)

instance_create(x,y,Dust)

with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x,joy_y),2+longarms)
image_angle = direction}
with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x,joy_y)+60,2+longarms)
image_angle = direction}
with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x,joy_y)-60,2+longarms)
image_angle = direction}

wepangle = -wepangle
motion_add(point_direction(x,y,joy_x,joy_y),6)
BackCont.viewx2 += lengthdir_x(24,point_direction(x,y,joy_x,joy_y))
BackCont.viewy2 += lengthdir_y(24,point_direction(x,y,joy_x,joy_y))
BackCont.shake += 1
}
if Player.cont = 1
{
alarm[0] = 45
sound_play(sndHammer)

instance_create(x,y,Dust)

with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x1   ,joy_y1),2+longarms)
image_angle = direction}
with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x1   ,joy_y1)+60,2+longarms)
image_angle = direction}
with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x1   ,joy_y1)-60,2+longarms)
image_angle = direction}

wepangle = -wepangle
motion_add(point_direction(x,y,joy_x1   ,joy_y1),6)
BackCont.viewx2 += lengthdir_x(24,point_direction(x,y,joy_x1   ,joy_y1))
BackCont.viewy2 += lengthdir_y(24,point_direction(x,y,joy_x1   ,joy_y1))
BackCont.shake += 1
}
}

//BAZOOKA
if wep = 14
{
if Player.cont = 0
{
sound_play(sndRocket)
alarm[0] = 30
ammo[wep_type[wep]] -=1
with instance_create(x,y,RocketP2)
{motion_add(point_direction(x,y,joy_x,joy_y),2)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(30,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(30,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 4
}
if Player.cont = 0
{
sound_play(sndRocket)
alarm[0] = 30
ammo[wep_type[wep]] -=1
with instance_create(x,y,RocketP2)
{motion_add(point_direction(x,y,joy_x1   ,joy_y1),2)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(30,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(30,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 4
}
}

//STICKY NADER
if wep = 15
{
if Player.cont = 0
{
sound_play(sndGrenade)
alarm[0] = 25
ammo[wep_type[wep]] -=1
with instance_create(x,y,GrenadeP2)
{
sticky = 1
motion_add(point_direction(x,y,joy_x,joy_y)+random(6)-3,11)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,joy_x,joy_y)+180)
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,joy_x,joy_y)+180)
BackCont.shake += 2
}
if Player.cont = 1
{
sound_play(sndGrenade)
alarm[0] = 25
ammo[wep_type[wep]] -=1
with instance_create(x,y,GrenadeP2)
{
sticky = 1
motion_add(point_direction(x,y,joy_x1   ,joy_y1)+random(6)-3,11)
image_angle = direction}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,joy_x1   ,joy_y1)+180)
BackCont.shake += 2
}
}
//SPOON
if wep = 16
{
if Player.cont = 0
{
alarm[0] = 6
sound_play(sndHammer)

instance_create(x,y,Dust)

with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x,joy_y),2+longarms)
image_angle = direction}
with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x,joy_y)+60,2+longarms)
image_angle = direction}
with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x,joy_y)-60,2+longarms)
image_angle = direction}

wepangle = -wepangle
motion_add(point_direction(x,y,joy_x,joy_y),6)
BackCont.viewx2 += lengthdir_x(24,point_direction(x,y,joy_x,joy_y))
BackCont.viewy2 += lengthdir_y(24,point_direction(x,y,joy_x,joy_y))
BackCont.shake += 1
}
if Player.cont = 1
{
alarm[0] = 6
sound_play(sndHammer)

instance_create(x,y,Dust)

with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x1   ,joy_y1),2+longarms)
image_angle = direction}
with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x1   ,joy_y1)+60,2+longarms)
image_angle = direction}
with instance_create(x,y,SlashP2)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*5
motion_add(point_direction(x,y,joy_x1   ,joy_y1)-60,2+longarms)
image_angle = direction}

wepangle = -wepangle
motion_add(point_direction(x,y,joy_x1   ,joy_y1),6)
BackCont.viewx2 += lengthdir_x(24,point_direction(x,y,joy_x1   ,joy_y1))
BackCont.viewy2 += lengthdir_y(24,point_direction(x,y,joy_x1   ,joy_y1))
BackCont.shake += 1
}
}
