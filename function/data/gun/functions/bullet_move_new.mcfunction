execute as @s at @s run tp @s ^ ^ ^0.75
scoreboard players remove #system Range 1
execute as @s at @s run particle minecraft:dust 0 1 0 0.2 ~ ~ ~ 0 0 0 1 5 force @a[distance=1..]
execute at @s if block ~ ~ ~ minecraft:air if score #system Range matches 1.. run function gun:bullet_move
