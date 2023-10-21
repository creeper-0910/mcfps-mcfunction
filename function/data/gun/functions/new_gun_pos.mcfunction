tag @s add Shooter

summon armor_stand ~ ~ ~ {Tags:["SpreadMarker"]}
data modify storage forward_spreader: Ditance set value 5.0f
execute store result score @s Accurate run data get entity @s SelectedItem.tag.Accurate
execute store result storage forward_spreader: Spread float 0.01 run scoreboard players get @s Accurate
execute at @s as @e[tag=SpreadMarker,sort=nearest,limit=1] run function forward_spreader:api/circle
execute at @s facing entity @e[tag=SpreadMarker,sort=nearest,limit=1] feet anchored eyes positioned ^ ^ ^5 run particle end_rod

#execute at @s run summon marker ~ ~ ~ {Tags:["bullet_"]}
#execute at @s run tp @e[tag=bullet_] ~ ~1.6 ~ ~ ~
#execute store result score #system Range run data get entity @s SelectedItem.tag.Range
#execute as @e[tag=bullet_] run function gun:bullet_move_new
#kill @e[tag=bullet_]

function gun:select_enemy
# 60 = 80 * 0.75
execute as @e[tag=Enemy,distance=..60] run function gun:gun_hit
execute as @e[tag=HitterT] run damage @s 3 system:shot by @p[tag=Shooter]
execute as @e[tag=HitterT] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1
execute if entity @e[tag=HitterT] run playsound block.glass.break player @s ~ ~ ~ 5
tag @s remove Shooter
tag @e[tag=HitterT] remove HitterT

#kill @e[tag=SpreadMarker,sort=nearest,limit=1]

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.25 1.8 0
playsound minecraft:block.fence_gate.open master @a ~ ~ ~ 0.5 1.5 0

scoreboard players remove @s Bullets 1
execute store result storage minecraft:data Bullets double 1 run scoreboard players get @s Bullets
item modify entity @s weapon.mainhand gun:gun_bullet_nbt
item modify entity @s weapon.mainhand gun:gun_bullet_name/new_generation

tag @e[tag=Enemy] remove Enemy
