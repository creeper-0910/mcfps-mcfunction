tag @s add Shooter
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["bullet_"]}
tp @e[tag=bullet_] ^ ^ ^-0.001 facing entity @s
tp @e[tag=bullet_] ~ ~1.6 ~
execute as @e[tag=bullet_] at @s run function gun:bullet_move
kill @e[tag=bullet_]

execute as @a[tag=!Shooter] run function gun:gun_hit
execute as @e[tag=HitterT] run damage @s 2 arrow
execute as @e[tag=HitterT] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 5
tag @s remove Shooter
tag @e remove HitterT