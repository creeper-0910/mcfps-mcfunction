clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:2} 1
function system:placepylon
execute at @s run scoreboard players operation @e[tag=pylon,sort=nearest,limit=1] pid = @s playerid
