summon armor_stand ~7 ~20 ~ {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs","initbombs"],OnGround:false}
summon armor_stand ~ ~20 ~7 {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs","initbombs"],OnGround:false}
summon armor_stand ~7 ~20 ~7 {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs","initbombs"],OnGround:false}
summon armor_stand ~-7 ~20 ~ {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs","initbombs"],OnGround:false}
summon armor_stand ~ ~20 ~-7 {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs","initbombs"],OnGround:false}
summon armor_stand ~-7 ~20 ~-7 {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs","initbombs"],OnGround:false}
summon armor_stand ~7 ~20 ~-7 {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs","initbombs"],OnGround:false}
summon armor_stand ~-7 ~20 ~7 {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs","initbombs"],OnGround:false}
spreadplayers ~ ~ 4 3 false @e[tag=initbombs]
execute as @e[tag=initbombs] at @s run tp @s ~ ~20 ~
tag @e[tag=initbombs] remove initbombs
