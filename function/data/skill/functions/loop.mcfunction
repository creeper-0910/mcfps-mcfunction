execute as @a[scores={testfor=1..},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run function skill:skill_test
execute as @a[scores={testfor=1..},nbt={SelectedItem:{tag:{CustomModelData:2}}}] at @s run function skill:pylon
execute as @a[scores={testfor=1..},nbt={SelectedItem:{tag:{CustomModelData:3}}}] at @s run function skill:x
execute as @a[scores={testfor=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] at @s run function skill:wing
execute as @a[scores={testfor=1..},nbt={SelectedItem:{tag:{CustomModelData:5}}}] at @s run function skill:bat_bomb
execute as @a[scores={testfor=1..},nbt={SelectedItem:{tag:{CustomModelData:6}}}] at @s run function skill:rapido

# skill_test -> scout
execute as @e[tag=marker1,scores={timer=20}] run scoreboard players operation #dummy pid = @s pid
execute as @e[tag=marker1,scores={timer=20}] at @s as @a if score @s playerid = #dummy pid run playsound entity.experience_orb.pickup player @s ~ ~ ~ 20
execute as @e[tag=marker1,scores={timer=40}] run scoreboard players operation #dummy pid = @s pid
execute as @e[tag=marker1,scores={timer=40}] at @s as @a if score @s playerid = #dummy pid run playsound entity.experience_orb.pickup player @s ~ ~ ~ 20
execute as @e[tag=marker1,scores={timer=60}] run scoreboard players operation #dummy pid = @s pid
execute as @e[tag=marker1,scores={timer=60}] at @s as @a if score @s playerid = #dummy pid run playsound entity.experience_orb.pickup player @s ~ ~ ~ 20
execute as @e[tag=marker1,scores={timer=80}] run scoreboard players operation #dummy pid = @s pid
execute as @e[tag=marker1,scores={timer=80}] at @s as @a if score @s playerid = #dummy pid run playsound entity.experience_orb.pickup player @s ~ ~ ~ 20
execute as @e[tag=marker1,scores={timer=100..}] run scoreboard players operation #dummy pid = @s pid
execute as @e[tag=marker1,scores={timer=100..}] at @s as @a if score @s playerid = #dummy pid run playsound entity.experience_orb.pickup player @s ~ ~ ~ 20
execute as @e[tag=marker1,scores={timer=100..}] at @s as @a if score @s playerid = #dummy pid run tp @s ~ ~ ~
execute as @e[tag=marker1,scores={timer=100..}] at @s as @a if score @s playerid = #dummy pid run gamemode survival @s
execute as @e[tag=marker1] at @s as @a if score @s playerid = #dummy pid run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 2 force
kill @e[tag=marker1,scores={timer=100..}]

# pylon
execute at @e[tag=pylon] as @a[distance=..5] run scoreboard players add @s Pylon_heal 1
effect give @a[scores={Pylon_heal=125..}] minecraft:regeneration 1 2 true
execute at @s if entity @a[distance=..5,scores={Pylon_heal=125..}] run scoreboard players add @s timer 1
execute at @a if entity @e[tag=pylon,scores={timer=..10},sort=nearest,limit=1] run scoreboard players reset @s[scores={Pylon_heal=125..}] Pylon_heal
#execute as @a at @s at @e[tag=pylon,sort=nearest,limit=1] run scoreboard players reset @s[distance=5..] Pylon_heal
scoreboard players reset @a[scores={Pylon_heal=125..}] Pylon_heal

execute as @e[tag=pylon] at @s if entity @e[type=minecraft:potion,distance=..5] run particle ambient_entity_effect ~ ~ ~ 0 0 0 2 99 force @a
execute as @e[tag=pylon] at @s run kill @e[type=minecraft:potion,distance=..5]

# blackhole
execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:luck",amplifier:31b}]}] run function system:placenewt

#execute as @e[tag=newt] unless score @s RotationAdd matches 30 run scoreboard players set @s RotationAdd 30
execute as @e[tag=newt_close] unless score @s RotationAdd matches 0 run scoreboard players set @s RotationAdd 0
execute at @e[tag=newt] as @a[distance=..10,gamemode=survival] at @s facing entity @e[tag=newt,sort=nearest,limit=1] eyes if block ^ ^ ^0.8 minecraft:air run tp @s ^ ^ ^0.2
#execute at @e[tag=newt] run particle minecraft:dust 0 0.86 1 1 ~ ~ ~ 0.8 0.5 -0.8 0 50 force
#execute at @e[tag=newt] run particle minecraft:dust 0 0.3 1 1 ~ ~ ~ 0.5 0.3 -0.5 0 20 force
#execute at @e[tag=newt] run particle minecraft:dust 0.1 0.13 0.25 1 ~ ~ ~ 0.4 0.3 -0.5 0 30 force
execute at @e[tag=newt] run particle minecraft:dust 0.5 0.8 0.9 1 ~ ~ ~ 0.5 0.3 -0.5 0 13 force
execute as @e[tag=newt,scores={newt_timer=120..}] run data modify entity @s item.tag.CustomModelData set value 4
execute as @e[tag=newt,scores={newt_timer=120..}] run tag @s add newt_close
execute as @e[tag=newt,scores={newt_timer=120..},tag=newt_close] run tag @s remove newt
execute as @e[tag=newt_close,scores={newt_timer=160..}] run kill @s

#DirectX
execute as @e[tag=ryujin] at @s run tp @s ^ ^ ^1.2
execute as @e[tag=ryujin] at @s unless block ~ ~ ~ minecraft:air run kill @s
execute as @e[tag=ryujin] at @s run damage @e[distance=..0.99,limit=1,type=!creeper] 4 magic

#Wing
execute as @a[scores={wing=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] at @s run tp @s ^ ^1.5 ^1
execute as @a[scores={wing=1..}] as @s run scoreboard players add @s wing 1
execute as @a[scores={wing=10..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] at @s run effect give @s slow_falling 1 1
execute as @a[scores={wing=10..}] as @s run scoreboard players reset @s wing

#bat_bomb
execute if entity @e[tag=bat_bomb,scores={timer=200..}] at @e[tag=bat_bomb] run summon creeper ~ ~ ~ {NoGravity:true,Fuse:1s,ignited:true}
scoreboard players add @e[tag=bat_bomb] timer 1

scoreboard players add @e[tag=marker1] timer 1
scoreboard players add @e[tag=newt] newt_timer 1
scoreboard players add @e[tag=newt_close] newt_timer 1

# poll
execute as @e[tag=test_poll] at @s facing entity @e[tag=test_poll,distance=0.3..10] eyes run function skill:poll_loop
execute as @e[tag=test_poll] at @s facing entity @e[tag=test_poll,distance=0.3..10] eyes run function skill:poll_loop3
execute as @e[tag=test_poll] at @s facing entity @e[tag=test_poll,distance=0.3..10] eyes run function skill:poll_loop2
