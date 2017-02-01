//WEAPONS
wep_name[0] = ""
wep_type[0] = 1
wep_auto[0] = 0
wep_sprt[0] = sprMachinegun
wep_area[0] = -1

wep_name[1] = "REVOLVER"
wep_type[1] = 1
wep_auto[1] = 0
wep_sprt[1] = sprRevolver
wep_area[1] = -1

wep_name[2] = "TRIPLE MACHINEGUN"
wep_type[2] = 1
wep_auto[2] = 1
wep_sprt[2] = sprTripleMachinegun
wep_area[2] = 3

wep_name[3] = "SLEDGEHAMMER"
wep_type[3] = 0
wep_auto[3] = 0
wep_sprt[3] = sprHammer
wep_area[3] = 1

wep_name[4] = "MACHINEGUN"
wep_type[4] = 1
wep_auto[4] = 1
wep_sprt[4] = sprMachinegun
wep_area[4] = 0

wep_name[5] = "SHOTGUN"
wep_type[5] = 2
wep_auto[5] = 0
wep_sprt[5] = sprShotgun
wep_area[5] = 0

wep_name[6] = "CROSSBOW"
wep_type[6] = 3
wep_auto[6] = 0
wep_sprt[6] = sprCrossbow
wep_area[6] = 1

wep_name[7] = "GRENADE LAUNCHER"
wep_type[7] = 4
wep_auto[7] = 1
wep_sprt[7] = sprNader
wep_area[7] = 1

wep_name[8] = "DOUBLE SHOTGUN"
wep_type[8] = 2
wep_auto[8] = 0
wep_sprt[8] = sprSuperShotgun
wep_area[8] = 5

wep_name[9] = "MINIGUN"
wep_type[9] = 1
wep_auto[9] = 1
wep_sprt[9] = sprMinigun
wep_area[9] = 6

wep_name[10] = "AUTO SHOTGUN"
wep_type[10] = 2
wep_auto[10] = 1
wep_sprt[10] = sprAutoShotgun
wep_area[10] = 6

wep_name[11] = "AUTO CROSSBOW"
wep_type[11] = 3
wep_auto[11] = 1
wep_sprt[11] = sprAutoCrossbow
wep_area[11] = 5

wep_name[12] = "SUPER CROSSBOW"
wep_type[12] = 3
wep_auto[12] = 0
wep_sprt[12] = sprSuperCrossbow
wep_area[12] = 7

wep_name[13] = "SHOVEL"
wep_type[13] = 0
wep_auto[13] = 0
wep_sprt[13] = sprShovel
wep_area[13] = 4

wep_name[14] = "BAZOOKA"
wep_type[14] = 4
wep_auto[14] = 0
wep_sprt[14] = sprBazooka
wep_area[14] = 5

wep_name[15] = "STICKY LAUNCHER"
wep_type[15] = 4
wep_auto[15] = 1
wep_sprt[15] = sprStickyNader
wep_area[15] = 7

wep_name[16] = "SPOON"
wep_type[16] = 0
wep_auto[16] = 1
wep_sprt[16] = sprSpoon
wep_area[16] = 1

wep_name[17] = "FLESH GUN"
wep_type[17] = 1
wep_auto[17] = 0
wep_sprt[17] = sprFleshGun
wep_area[17] = 1

maxwep = 16

//0 = melee 1 = bullets 2 = shells 3 = bolts 4 = explosives

typ_ammo[0] = 0
typ_ammo[1] = 24
typ_ammo[2] = 8
typ_ammo[3] = 8
typ_ammo[4] = 5

if instance_exists(Player)
{
if Player.race = 1
{
typ_ammo[1] = 28
typ_ammo[2] = 8
typ_ammo[3] = 8
typ_ammo[4] = 6
}
}

if instance_exists(Player)
{
typ_amax[0] = 1000
typ_amax[1] = 555+Player.skill_got[10]*444
typ_amax[2] = 55+Player.skill_got[10]*44
typ_amax[3] = 55+Player.skill_got[10]*44
typ_amax[4] = 55+Player.skill_got[10]*44
}
else
{
typ_amax[0] = 1000
typ_amax[1] = 555
typ_amax[2] = 55
typ_amax[3] = 55
typ_amax[4] = 55
}
typ_name[0] = "MELEE"
typ_name[1] = "BULLETS"
typ_name[2] = "SHELLS"
typ_name[3] = "BOLTS"
typ_name[4] = "EXPLOSIVES"
