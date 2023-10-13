tag @s add Shooter
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["bullet_"]}
tp @e[tag=bullet_] ^ ^ ^-0.001 facing entity @s
tp @e[tag=bullet_] ~ ~1.6 ~
execute as @e[tag=bullet_] at @s run function gun:bullet_move
kill @e[tag=bullet_]

execute as @e[tag=!Shooter] run function gun:gun_hit
execute as @e[tag=HitterT] run damage @s 3 system:shot by @p[tag=Shooter]
execute as @e[tag=HitterT] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 5
tag @s remove Shooter
tag @e remove HitterT

execute as @s at @s run tp @s ~ ~ ~ ~-1 ~1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.25 1.8 0
playsound minecraft:block.fence_gate.open master @a ~ ~ ~ 0.5 1.5 0

scoreboard players remove @s Bullets 1
execute store result storage minecraft:data Bullets double 1 run scoreboard players get @s Bullets
item modify entity @s weapon.mainhand gun:gun_bullet_nbt
item modify entity @s weapon.mainhand gun:gun_bullet_name/lmg
