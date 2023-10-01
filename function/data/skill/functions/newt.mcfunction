summon armor_stand ~ ~ ~ {Invisible:true,Small:true,Passengers:[{id:"item_display", item:{id:"minecraft:sea_lantern",Count:1b,tag:{CustomModelData:4}},Tags:["rotations","newt_close"],transformation:{translation:[0.0f,-1.7f,0.0f]}}],Tags:["ThrowedNewt","InitNewt"]}
execute as @s at @s run tp @e[tag=InitNewt,tag=ThrowedNewt] ^ ^ ^-0.001 facing entity @s
tp @e[tag=InitNewt,tag=ThrowedNewt] ~ ~1.6 ~
