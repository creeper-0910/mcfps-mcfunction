summon item_display ~ ~1.4 ~ {item:{id:"minecraft:sea_lantern",Count:1b,tag:{CustomModelData:3}},Tags:["rotations","newt"]}
#summon item_display ~ ~0.5 ~ {item:{id:"minecraft:sea_lantern",Count:1b,tag:{CustomModelData:4}},Tags:["rotations","newt_close"]}
#scoreboard players set @e[type=minecraft:item_display,tag=rotations] RotationAdd 30
