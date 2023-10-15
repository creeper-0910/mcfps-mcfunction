execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:luck",amplifier:116b}]}] run summon creeper ~ ~ ~ {Fuse:1s,ignited:true}
execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:unluck",amplifier:116b}]}] run function item:bomb
execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:luck",amplifier:115b}]}] run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["FlashBang"]}
execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:luck",amplifier:115b}]}] run scoreboard players add @e[tag=FlashBang] flashbang_timer 1
execute at @e[tag=FlashBang,scores={flashbang_timer=..5}] run particle minecraft:flash ~ ~ ~ 3 3 3 1 100 force
execute at @e[tag=FlashBang] run tag @a[distance=..10] add FlashPlayer
execute as @a[tag=!FlashPlayer] run scoreboard players set @s flashbang_timer 1
execute as @e[scores={flashbang_timer=5..},tag=FlashBang] run kill @s
execute as @a[tag=FlashPlayer] at @s anchored eyes run particle minecraft:flash ~ ~ ~ 0 0 0 1 20 force @p
execute as @a[tag=FlashPlayer] at @s anchored eyes run particle minecraft:flash ~ ~ ~1 0 0 0 1 20 force @p
execute as @a[tag=FlashPlayer] at @s run effect give @s minecraft:slowness infinite 2 true
execute as @a[scores={flashbang_timer=60..},tag=FlashPlayer] run effect clear @s minecraft:slowness
execute as @a[scores={flashbang_timer=60..},tag=FlashPlayer] run tag @s remove FlashPlayer
kill @e[type=minecraft:area_effect_cloud,tag=]
execute as @e[tag=eye] at @s run function item:eye_tick
execute as @a[scores={use_ender_eye=1..}] run function item:eye
kill @e[type=minecraft:eye_of_ender]
scoreboard players remove @a[scores={noglow=1..}] noglow 1
kill @e[tag=bombs,nbt={OnGround:true}]
execute at @e[tag=bombs,nbt={OnGround:true}] run summon creeper ~ ~ ~ {Fuse:1s,ignited:true}

# heal item
execute as @a[scores={eat_count=10},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run playsound minecraft:entity.generic.eat player @s ~ ~ ~
execute as @a[scores={eat_count=20},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run playsound minecraft:entity.generic.eat player @s ~ ~ ~
execute as @a[scores={eat_count=30},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run playsound minecraft:entity.generic.eat player @s ~ ~ ~
execute as @a[scores={eat_count=40},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run playsound minecraft:entity.generic.eat player @s ~ ~ ~
execute as @a[scores={eat_count=50},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run playsound minecraft:entity.generic.eat player @s ~ ~ ~
execute as @a[scores={eat_count=60},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run playsound minecraft:entity.generic.eat player @s ~ ~ ~
effect give @a[scores={eat_count=60..},nbt={SelectedItem:{tag:{CustomModelData:1}}}] instant_health 1 1 true
clear @a[scores={eat_count=60..},nbt={SelectedItem:{tag:{CustomModelData:1}}}] mushroom_stew{heal:true} 1
# これがtrue -> まだ持ってるから継続回復可能に
scoreboard players set @a[scores={eat_count=60..},nbt={SelectedItem:{tag:{CustomModelData:1}}}] eat_count 0

scoreboard players reset @a[scores={use_ender_eye=1..}] use_ender_eye

scoreboard players add @e[tag=FlashBang] flashbang_timer 1
scoreboard players add @e[tag=FlashPlayer] flashbang_timer 1
