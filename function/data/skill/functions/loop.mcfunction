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

scoreboard players add @e[tag=marker1] timer 1

scoreboard players reset @a[scores={testfor=1..}] testfor
