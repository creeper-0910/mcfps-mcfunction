tag @s add Shooter
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["bullet_sniper"]}
tp @e[tag=bullet_sniper] ^ ^ ^-0.001 facing entity @s
tp @e[tag=bullet_sniper] ~ ~1.6 ~
execute as @e[tag=bullet_sniper] at @s run function gun:bullet_move_sniper
kill @e[tag=bullet_sniper]

execute as @e[tag=!Shooter] run function gun:gun_hit
execute as @e[tag=HitterT] at @s run damage @s 10 arrow by @p[tag=Shooter]
execute as @e[tag=HitterT] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 5
tag @s remove Shooter
tag @e remove HitterT

execute as @s at @s run tp @s ~ ~ ~ ~5 ~
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.25 2 0
playsound minecraft:block.fence_gate.open master @a ~ ~ ~ 0.5 1.5 0

scoreboard players remove @s Bullets 1
execute store result storage minecraft:data Bullets double 1 run scoreboard players get @s Bullets
item modify entity @s weapon.mainhand gun:gun_bullet_nbt
item modify entity @s weapon.mainhand gun:gun_bullet_name/sniper
