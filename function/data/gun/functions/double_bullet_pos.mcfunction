tag @s add Shooter
execute at @s run summon area_effect_cloud ^ ^ ^ {Tags:["bullet_d"]}
tp @e[tag=bullet_d] ^ ^ ^-0.001 facing entity @s
tp @e[tag=bullet_d] ~ ~1.6 ~
execute as @e[tag=bullet_d] at @s run function gun:bullet_move_d
kill @e[tag=bullet_d]

execute as @a[tag=!Shooter] run function gun:gun_hit
execute as @e[tag=HitterT] run damage @s 4 drown
execute as @e[tag=HitterT] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 5
tag @s remove Shooter
tag @e remove HitterT
