tag @s add Shooter
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["bullet_amr"]}
tp @e[tag=bullet_amr] ^ ^ ^-0.001 facing entity @s
tp @e[tag=bullet_amr] ~ ~1.6 ~
execute as @e[tag=bullet_amr] at @s run function gun:bullet_move_amr
kill @e[tag=bullet_amr]

execute as @e[tag=!Shooter] run function gun:gun_hit
execute as @e[tag=HitterT] run damage @s 10 system:shot by @p[tag=Shooter]
execute as @e[tag=HitterT] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 5
tag @s remove Shooter
tag @e remove HitterT

execute as @s at @s run tp @s ~ ~ ~ ~ ~-4
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.25 2 0
playsound minecraft:block.fence_gate.open master @a ~ ~ ~ 0.5 1.5 0
scoreboard players set @s GunCoolTime 30

scoreboard players remove @s Bullets 1
execute store result storage minecraft:data Bullets double 1 run scoreboard players get @s Bullets
item modify entity @s weapon.mainhand gun:gun_bullet_nbt
item modify entity @s weapon.mainhand gun:gun_bullet_name/amr
