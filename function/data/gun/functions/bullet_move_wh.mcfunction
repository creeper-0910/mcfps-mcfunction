execute as @s at @s run tp @s ^ ^ ^0.75
execute as @s at @s run particle minecraft:dust 0 1 0 0.2 ~ ~ ~ 0 0 0 1 10 force @a[distance=1..]
execute at @s unless entity @e[tag=Hitter,distance=..1] run function gun:bullet_move_wh
execute at @s if entity @e[tag=Hitter,distance=..1] run tag @e[tag=Hitter,distance=..1] add HitterT
