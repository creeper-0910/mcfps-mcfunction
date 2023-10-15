summon armor_stand ~3 ~10 ~ {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs"]}
summon armor_stand ~ ~10 ~3 {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs"]}
summon armor_stand ~3 ~10 ~3 {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs"]}
summon armor_stand ~7 ~10 ~ {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs"]}
summon armor_stand ~ ~10 ~7 {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs"]}
summon armor_stand ~7 ~10 ~7 {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs"]}
summon armor_stand ~ ~10 ~ {Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lingering_potion",Count:1b,tag:{CustomModelData:3}}],Tags:["bombs"]}
#spreadplayers ~ ~ 4 3 false @e[tag=bombs]
execute as @e[tag=bombs] at @s run tp @s ~ ~7 ~
