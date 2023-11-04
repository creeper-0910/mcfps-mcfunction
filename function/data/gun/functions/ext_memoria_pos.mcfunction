tag @s add Shooter
#execute at @s run summon marker ~ ~ ~ {Tags:["bullet_"]}
#execute at @s run tp @e[tag=bullet_] ~ ~1.6 ~ ~ ~
#execute store result score #system Range run data get entity @s SelectedItem.tag.Range
#execute as @e[tag=bullet_] run function gun:bullet_move_new
#kill @e[tag=bullet_]

#function gun:select_enemy
# 35 = 47 * 0.75
#execute as @e[tag=Enemy,distance=..60] run function gun:gun_hit
#execute as @e[tag=HitterT] run damage @s 5 system:sonic_boom by @p[tag=Shooter]
#execute as @e[tag=HitterT] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1
#execute if entity @e[tag=HitterT] run playsound block.glass.break player @s ~ ~ ~ 5 0.9
# 第一反動
#execute as @s at @s run tp @s ~ ~ ~ ~ ~-0.3
# 35 = 47 * 0.75
#execute as @e[tag=Enemy,distance=..60] run function gun:gun_hit
#execute as @e[tag=HitterT] run damage @s 5 system:sonic_boom by @p[tag=Shooter]
#execute as @e[tag=HitterT] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1
#execute if entity @e[tag=HitterT] run playsound block.glass.break player @s ~ ~ ~ 5
execute as @s run function gun:bullet_shot_loop
tag @s remove Shooter
#tag @e[tag=Enemy,tag=HitterT] remove HitterT
# 第二反動
#execute as @s at @s run tp @s ~ ~ ~ ~ ~-0.3

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.25 1.8 0
playsound minecraft:block.fence_gate.open master @a ~ ~ ~ 0.5 1.5 0

scoreboard players remove @s Bullets 1
execute store result storage minecraft:data Bullets double 1 run scoreboard players get @s Bullets
item modify entity @s weapon.mainhand gun:gun_bullet_nbt
item modify entity @s weapon.mainhand gun:gun_bullet_name/ext_memoria
scoreboard players set @s[scores={GunRepeat=3}] GunCoolTime 10

tag @e[tag=Enemy] remove Enemy
