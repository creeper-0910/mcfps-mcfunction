execute at @s run summon item_display ^ ^ ^1 {Tags:["ryujin","init_ryujin_no_ken_wo_kurae"],item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:3}},transformation:[1.0000f,0.0000f,0.0000f,-0.0625f,0.0000f,1.0000f,0.0000f,0.5000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute at @s run tp @e[tag=init_ryujin_no_ken_wo_kurae] ~ ~1.8 ~ ~ ~
tag @e[tag=ryujin,tag=init_ryujin_no_ken_wo_kurae] remove init_ryujin_no_ken_wo_kurae

scoreboard players remove @s Bullets 1
execute store result storage minecraft:data Bullets double 1 run scoreboard players get @s Bullets
item modify entity @s weapon.mainhand gun:gun_bullet_nbt
item modify entity @s weapon.mainhand gun:gun_bullet_name/wallhacker
