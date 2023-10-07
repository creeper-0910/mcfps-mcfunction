execute at @s run summon item_display ^ ^ ^1 {Tags:["ryujin_sn","init_ryujin_no_ken_wo_kurae_sn"],item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:3}},transformation:[1.0000f,0.0000f,0.0000f,-0.0625f,0.0000f,1.0000f,0.0000f,0.5000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute at @s run tp @e[tag=init_ryujin_no_ken_wo_kurae_sn] ~ ~1.8 ~ ~ ~
tag @e[tag=init_ryujin_no_ken_wo_kurae] remove init_ryujin_no_ken_wo_kurae
tag @e[tag=ryujin] remove ryujin
tag @e[tag=ryujin,tag=init_ryujin_no_ken_wo_kurae_sn] remove init_ryujin_no_ken_wo_kurae_sn