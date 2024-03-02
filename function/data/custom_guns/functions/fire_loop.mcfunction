# 弾を前に飛ばす
tp @s ^ ^ ^0.5
# 射程管理
scoreboard players remove #system Range 1

particle minecraft:dust 0 1 0 0.2 ~ ~ ~ 0 0 0 1 5 force @a

# 実際にダメージを与える処理
execute if entity @e[type=!marker,type=!ender_dragon,dx=0.2,dy=0.2,dz=0.2] run function custom_guns:damage

# 特定ブロックなら破壊する
execute at @s if block ~ ~ ~ #custom_guns:break if score #system GlassBreak matches 1.. run function custom_guns:break
# でも何回も貫通してたら無理
execute at @s if block ~ ~ ~ #custom_guns:break if score #system GlassBreak matches 0 run kill @s

# 空気なら再起
execute at @s if block ~ ~ ~ minecraft:air if score #system Range matches 1.. run function custom_guns:fire_loop

# もう飛ばないのでkill
execute if score #system Range matches 0 run kill @s
