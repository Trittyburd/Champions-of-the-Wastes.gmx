skill_name[0] = ""
skill_text[0] = ""

skill_name[1] = "Crystal#Skin"
skill_text[1] = "4 More Health"

skill_name[2] = "Raptor#Feet"
skill_text[2] = "Move Faster"

skill_name[3] = "Rad#Magnet"
skill_text[3] = "Attract Items Farther Away"

skill_name[4] = "Seven#Fingers"
skill_text[4] = "More HP and Ammo Drops"

skill_name[5] = "Spartan#Heart"
if Player.race = 1
skill_text[5] = "Fish-Water Boost"
if Player.race = 2
skill_text[5] = "Crystal-Teleport to Cursor"
if Player.race = 3
skill_text[5] = "Melting-Bigger Blood-splosions"
if Player.race = 4
skill_text[5] = "Eyes-Stronger Telekinesis"
if Player.race = 5
skill_text[5] = "Plant-Kill Low Health Enemies on Snare"
if Player.race = 6
skill_text[5] = "Hoovy-Faster Fire Rate While Revved"
if Player.race = 7
skill_text[5] = "O.W.L.-Move Faster While Flying"
if Player.race = 9
skill_text[5] = "Dinosaur-Heal more"

skill_name[6] = "Ammo#Sweat"
skill_text[6] = "Some kills regenerate ammo"

skill_name[7] = "Carnivore"
skill_text[7] = "Some Kills Heal"

skill_name[8] = "Body#Spikes"
skill_text[8] = "Touch and Sting"

skill_name[9] = "Metabolism"
skill_text[9] = "Medkits heal more"

skill_name[10] = "Ingrown#Belt"
skill_text[10] = "Carry more ammo"

skill_name[11] = "Putrid#Stench"
skill_text[11] = "Enemies have less HP"

skill_name[12] = "Racing#Mind"
skill_text[12] = "Slower Enemy Bullets"

skill_name[13] = "Rubber#Limbs"
skill_text[13] = "Extra Melee Range"


maxskill = 13

dir = 0
repeat(maxskill+1)
{skill_got[dir] = 0
dir += 1}
