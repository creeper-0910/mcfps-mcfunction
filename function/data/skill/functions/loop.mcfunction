execute as @a[scores={testfor=1..}] at @s run function skill:skill_test

# skill_test
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

# pylon
execute as @e[tag=pylon] at @s as @a[distance=..5] run scoreboard players add @s Pylon_heal 1
effect give @a[scores={Pylon_heal=125..}] minecraft:regeneration 1 2
scoreboard players reset @a[scores={Pylon_heal=125..}] Pylon_heal
execute as @e[tag=pylon] at @s run scoreboard players reset @a[distance=5..] Pylon_heal

execute as @e[tag=pylon] at @s if entity @e[type=minecraft:potion,distance=..5] run particle ambient_entity_effect ~ ~ ~ 0 0 0 2 99 force @a
execute as @e[tag=pylon] at @s run kill @e[type=minecraft:potion,distance=..5]

scoreboard players add @e[tag=marker1] timer 1

scoreboard players reset @a[scores={testfor=1..}] testfor
