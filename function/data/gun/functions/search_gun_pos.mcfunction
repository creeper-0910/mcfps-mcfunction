scoreboard objectives add Charge_Search dummy
execute at @s run summon item_display ^ ^ ^1 {Tags:["ryujin","init_ryujin_no_ken_wo_kurae"],item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:3}},transformation:[1.0000f,0.0000f,0.0000f,-0.0625f,0.0000f,1.0000f,0.0000f,0.5000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute at @s run tp @e[tag=init_ryujin_no_ken_wo_kurae] ~ ~1.8 ~ ~ ~
execute at @s run scoreboard players operation @e[tag=init_ryujin_no_ken_wo_kurae,tag=ryujin,sort=nearest,limit=1] pid = @s playerid
tag @e[tag=ryujin,tag=init_ryujin_no_ken_wo_kurae] remove init_ryujin_no_ken_wo_kurae

scoreboard players remove @s Bullets 1
execute store result storage minecraft:data Bullets double 1 run scoreboard players get @s Bullets
execute store result storage minecraft:data Bullets2 double 1 run scoreboard players get @s Bullets2
execute as @a if entity @s[scores={shot_gun=1},nbt={SelectedItem:{tag:{CustomModelData:4}}}] unless predicate system:is_sneak at @s run scoreboard players add @s Charge_Search 1
execute as @a if entity @s[scores={Charge_Search=5},nbt={SelectedItem:{tag:{CustomModelData:4}}}] unless predicate system:is_sneak at @s run tellraw @s {"text":"左手に持ちながらShift+右クリックでスペシャルスキルを発動"}
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.25 2 0
playsound minecraft:block.fence_gate.open master @a ~ ~ ~ 0.5 1.5 0
scoreboard players set @s GunCoolTime 5
item modify entity @s weapon.mainhand gun:gun_bullet_nbt2
item modify entity @s weapon.mainhand gun:gun_bullet_name/wallhacker
