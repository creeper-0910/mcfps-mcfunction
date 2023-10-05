execute at @s run summon armor_stand ~ ~ ~ {NoGravity:true,Marker:true,Invisible:true,Tags:["eye"]}
execute at @s run tp @e[distance=..2,sort=nearest,limit=1,tag=eye]
scoreboard players set @s nowglow 20
scoreboard players set @s Distance 0
