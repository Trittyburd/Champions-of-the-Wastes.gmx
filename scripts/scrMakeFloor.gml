instance_create(x,y,Floor)

area = 1
if instance_exists(Player)
area = Player.area
if area = -1 and Player.pvp = 1
{

}
if area = -1
{
instance_create(x+32,y,Floor)
instance_create(x+32,y+32,Floor)
instance_create(x,y+32,Floor)
}


if area = 1 and random(2) < 1
{
instance_create(x+32,y,Floor)
instance_create(x+32,y+32,Floor)
instance_create(x,y+32,Floor)
}
if area = 3 and random(9) < 1
{
instance_create(x+32,y,Floor)
instance_create(x+32,y+32,Floor)
instance_create(x,y+32,Floor)
instance_create(x,y-32,Floor)
instance_create(x-32,y,Floor)
instance_create(x+32,y-32,Floor)
instance_create(x-32,y-32,Floor)
instance_create(x-32,y+32,Floor)
}


if area = 1
trn = choose(0,0,0,0,0,0,0,0,0,90,-90,90,-90,180)
if area = 2
trn = choose(0,0,0,0,0,0,0,0,90,-90,90,-90,180)
if area = 3
trn = choose(0,0,0,0,0,0,0,0,0,0,90,-90,90,-90)
direction += trn

x += lengthdir_x(32,direction)
y += lengthdir_y(32,direction)
instance_create(x,y,Floor)


if trn = 180
instance_create(x+16,y+16,WeaponChest)

if area = 1
{
if random(29+instance_number(FloorMaker)) > 30
{
instance_destroy()
instance_create(x+16,y+16,AmmoChest)
}
if random(20) < 1
instance_create(x,y,FloorMaker)
}
if area = 2
{
if random(19+instance_number(FloorMaker)) > 20
{
instance_create(x+16,y+16,AmmoChest)
instance_destroy()
}
if random(15) < 1
instance_create(x,y,FloorMaker)
}

if area = 3
{
if random(39+instance_number(FloorMaker)) > 40
{
instance_create(x+16,y+16,AmmoChest)
instance_destroy()
}
if random(25) < 1
instance_create(x,y,FloorMaker)
}
