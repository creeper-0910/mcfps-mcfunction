summon item_display ~ ~0.8 ~ {item:{id:"minecraft:sea_lantern",Count:1b,tag:{CustomModelData:1}},Tags:["rotations","pylon_head","pylon"]}
summon item_display ~ ~ ~ {item:{id:"minecraft:sea_lantern",Count:1b,tag:{CustomModelData:2}},Tags:["pylon_leg","pylon"]}
scoreboard players set @e[type=minecraft:item_display,tag=rotations] RotationAdd 20