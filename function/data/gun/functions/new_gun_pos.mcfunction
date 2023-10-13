tag @s add Shooter
execute at @s run summon marker ~ ~ ~ {Tags:["bullet_"]}
execute at @s run tp @e[tag=bullet_] ~ ~1.6 ~ ~ ~
execute store result score #system Range run data get entity @s SelectedItem.tag.Range
execute as @e[tag=bullet_] run function gun:bullet_move_new
kill @e[tag=bullet_]

function gun:select_enemy
execute as @e[tag=Enemy] run function gun:gun_hit
execute as @e[tag=HitterT] run damage @s 3 system:shot by @p[tag=Shooter]
execute as @e[tag=HitterT] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 5
execute if entity @e[tag=HitterT] run playsound block.glass.break player @s ~ ~ ~ 5
tag @s remove Shooter
tag @e[tag=Enemy,tag=HitterT] remove HitterT

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.25 1.8 0
playsound minecraft:block.fence_gate.open master @a ~ ~ ~ 0.5 1.5 0

scoreboard players remove @s Bullets 1
execute store result storage minecraft:data Bullets double 1 run scoreboard players get @s Bullets
item modify entity @s weapon.mainhand gun:gun_bullet_nbt
item modify entity @s weapon.mainhand gun:gun_bullet_name/new_generation

tag @e[tag=Enemy] remove Enemy
