execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:luck",amplifier:116b}]}] run summon creeper ~ ~ ~ {Fuse:1s,ignited:true}
execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:unluck",amplifier:116b}]}] run summon creeper ~ ~ ~ {Fuse:1s,ignited:true,powered:1}
execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:luck",amplifier:115b}]}] run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["FlashBang"]}
execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:luck",amplifier:115b}]}] run scoreboard players add @e[tag=FlashBang] flashbang_timer 1
execute at @e[tag=FlashBang] run particle minecraft:flash ~ ~ ~ 3 3 3 1 100 force
execute at @e[tag=FlashBang] at @a[distance=..10] as @a run particle minecraft:flash ~ ~1 ~ 0.1 0.1 0.1 10 70 force @s
execute as @e[scores={flashbang_timer=60..},tag=FlashBang] run kill @s
kill @e[type=minecraft:area_effect_cloud,tag=]
execute as @e[tag=eye] at @s run function item:eye_tick
execute as @a[scores={use_ender_eye=1..}] run function item:eye
kill @e[type=minecraft:eye_of_ender]
scoreboard players remove @a[scores={noglow=1..}] noglow 1

scoreboard players reset @a[scores={use_ender_eye=1..}] use_ender_eye

scoreboard players add @e[tag=FlashBang] flashbang_timer 1