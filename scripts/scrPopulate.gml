with Floor
{
if random(8+Player.hard) < Player.hard and point_distance(x,y,Player.x,Player.y) > 96 and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest)
{

if Player.hard < 10
{
if Player.area = 1
spawnarea = 1
if Player.area = 2
spawnarea = 2
if Player.area = 3
spawnarea = 3
}
else
spawnarea = choose(1,2,3)


if Player.chaos = 0
{
if spawnarea = 1 and Player.pvp = 0
{//DESERT
if random(7) <1 
instance_create(x+16,y+16,choose(MaggotSpawn,MaggotSpawn,Scorpion))
else
{if random(30) < 1
{instance_create(x+16,y+16,Barrel)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)}
else
instance_create(x+16,y+16,choose(Bandit,Bandit,Bandit,Bandit,Bandit,Bandit,Maggot))}
}

if spawnarea = 2
{//SEWERS
if random(9) < 1
instance_create(x+16,y+16,choose(Exploder,Ratking,Exploder,Ratking,Exploder,Ratking,MeleeBandit))
else
instance_create(x+16,y+16,choose(Rat,Rat,Rat,Rat,Rat,Bandit))
}
if spawnarea = 3
{//SCRAPYARD
if random(4) < 1
instance_create(x+16,y+16,choose(MeleeBandit,Sniper,MeleeBandit,Sniper,MeleeBandit,Sniper,Sniper,Exploder))
else
{
if random(10) < 1
{if random(3) < 1instance_create(x+16,y+16,Barrel)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)}
else
instance_create(x+16,y+16,choose(Bandit))}
}
}



if Player.chaos = 1
{
//DESERT
if random(7) <1 
instance_create(x+16,y+16,choose(MaggotSpawn,MaggotSpawn,Scorpion))
else
{if random(30) < 1
{instance_create(x+16,y+16,Barrel)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)}
else
instance_create(x+16,y+16,choose(Bandit,Bandit,Bandit,Bandit,Bandit,Bandit,Maggot))}
//SEWERS
if random(9) < 1
instance_create(x+16,y+16,choose(Exploder,Ratking,Exploder,Ratking,Exploder,Ratking,MeleeBandit))
else
instance_create(x+16,y+16,choose(Rat,Rat,Rat,Rat,Rat,Bandit))
//SCRAPYARD
if random(4) < 1
instance_create(x+16,y+16,choose(MeleeBandit,Sniper,MeleeBandit,Sniper,MeleeBandit,Sniper,Sniper,Exploder))
else
{
if random(10) < 1
{if random(3) < 1instance_create(x+16,y+16,Barrel)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)}
else
instance_create(x+16,y+16,choose(Bandit))}
}
}

if random(20) < 1 and !place_meeting(x,y,Player) and !place_meeting(x,y,enemy) and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and !place_meeting(x,y,MeleeFake)
{
if Player.hard < 10
{
if Player.area = 1
spawnarea = 1
if Player.area = 2
spawnarea = 2
if Player.area = 3
spawnarea = 3
}
else
spawnarea = choose(1,2,3)

myx = x+choose(0,16)
myy = y+choose(0,16)
instance_create(myx,myy,Wall)
if random(7) < 1 and point_distance(myx,myy,Player.x,Player.y) > 64 and spawnarea = 3
instance_create(myx,myy,Trap)
}

}

if instance_exists(WeaponChest) and (GenCont.pvp = 0 or Player.chaos = 1)
{{do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,WeaponChest) instance_destroy()}
until instance_number(WeaponChest) <= 1}}


if instance_exists(RadChest) and (GenCont.pvp = 0 or Player.chaos = 1)
{{do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,RadChest) instance_destroy()}
until instance_number(RadChest) <= 1}}

else {do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,RadChest) instance_destroy()}
until instance_number(RadChest) <= 4}


if instance_exists(AmmoChest) and (GenCont.pvp = 0 or Player.chaos = 1)
{{do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,AmmoChest) instance_destroy()}
until instance_number(AmmoChest) <= 1}}

else {do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,AmmoChest) instance_destroy()}
until instance_number(AmmoChest) <= 4}


with ChestOpen
instance_destroy()
