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
effect give @a[scores={Pylon_heal=125..}] minecraft:regeneration 1 2 true
scoreboard players reset @a[scores={Pylon_heal=125..}] Pylon_heal
execute as @e[tag=pylon] at @s run scoreboard players reset @a[distance=5..] Pylon_heal

execute as @e[tag=pylon] at @s if entity @e[type=minecraft:potion,distance=..5] run particle ambient_entity_effect ~ ~ ~ 0 0 0 2 99 force @a
execute as @e[tag=pylon] at @s run kill @e[type=minecraft:potion,distance=..5]

# blackhole
execute as @e[tag=newt] unless score @s RotationAdd matches 30 run scoreboard players set @s RotationAdd 30
execute as @e[tag=newt_close] unless score @s RotationAdd matches 0 run scoreboard players set @s RotationAdd 0
execute at @e[tag=newt] as @a[distance=..10,gamemode=survival] at @s facing entity @e[tag=newt,sort=nearest,limit=1] eyes if block ^ ^ ^0.8 minecraft:air run tp @s ^ ^ ^0.2
execute at @e[tag=newt] run particle minecraft:dust 0.5 0.8 0.9 1 ~ ~0.5 ~ 0.5 0.5 -0.5 0 25 force
execute as @e[tag=newt,scores={newt_timer=120..}] run data modify entity @s item.tag.CustomModelData set value 4
execute as @e[tag=newt,scores={newt_timer=120..}] run tag @s add newt_close
execute as @e[tag=newt,scores={newt_timer=120..},tag=newt_close] run tag @s remove newt

scoreboard players add @e[tag=marker1] timer 1
scoreboard players add @e[tag=newt] newt_timer 1

scoreboard players reset @a[scores={testfor=1..}] testfor
