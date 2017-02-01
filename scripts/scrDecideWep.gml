if instance_exists(Player)
{
do wep = round(random(maxwep-1)+1)
until wep_area[wep] != -1 and wep_area[wep] <= Player.hard
}
else
wep = round(random(maxwep-1)+1)
