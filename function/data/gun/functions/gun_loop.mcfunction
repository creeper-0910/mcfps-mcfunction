execute as @a[scores={shot_gun=1}] at @s run function gun:bullet_pos
execute as @a[scores={shot_gun=1}] if entity @s[nbt={SelectedItem:{tag:{kusa:"kusa"}}}] at @s run function gun:double_bullet_pos
execute as @a[scores={testfor=1..}] at @s run function skill:skill_test
scoreboard players reset @a[scores={shot_gun=1..}] shot_gun
scoreboard players reset @a[scores={testfor=1..}] testfor

scoreboard players add @e[tag=marker1] timer 1


execute as @e[tag=marker1,scores={timer=20}] run scoreboard players operation #dummy pid = @s pid
execute as @e[tag=marker1,scores={timer=20}] at @s as @a if score @s playerid = #dummy pid run playsound entity.experience_orb.pickup master @s ~ ~ ~ 20
execute as @e[tag=marker1,scores={timer=40}] run scoreboard players operation #dummy pid = @s pid
execute as @e[tag=marker1,scores={timer=40}] at @s as @a if score @s playerid = #dummy pid run playsound entity.experience_orb.pickup master @s ~ ~ ~ 20
execute as @e[tag=marker1,scores={timer=60}] run scoreboard players operation #dummy pid = @s pid
execute as @e[tag=marker1,scores={timer=60}] at @s as @a if score @s playerid = #dummy pid run playsound entity.experience_orb.pickup master @s ~ ~ ~ 20
execute as @e[tag=marker1,scores={timer=80}] run scoreboard players operation #dummy pid = @s pid
execute as @e[tag=marker1,scores={timer=80}] at @s as @a if score @s playerid = #dummy pid run playsound entity.experience_orb.pickup master @s ~ ~ ~ 20
execute as @e[tag=marker1,scores={timer=100..}] run scoreboard players operation #dummy pid = @s pid
execute as @e[tag=marker1,scores={timer=100..}] at @s as @a if score @s playerid = #dummy pid run tp @s ~ ~ ~
execute as @e[tag=marker1,scores={timer=100..}] at @s as @a if score @s playerid = #dummy pid run gamemode survival @s
execute as @e[tag=marker1] at @s as @a if score @s playerid = #dummy pid run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 2 force
kill @e[tag=marker1,scores={timer=100..}]

scoreboard players add @e[tag=rotation5] Rotation 5
execute as @e[tag=rotation5] if score @s Rotation matches 180.. run scoreboard players set @s Rotation -180
execute as @e[tag=rotation5] store result entity @s Rotation[0] float 1 run scoreboard players get @s Rotation
