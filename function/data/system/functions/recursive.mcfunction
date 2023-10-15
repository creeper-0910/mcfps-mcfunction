execute if block ~ ~ ~ minecraft:air positioned ^ ^ ^0.5 run function system:recursive
execute if entity @s[team=Red] unless block ~ ~ ~ minecraft:air run particle minecraft:dust 0.7 0.1 0 0.5 ~ ~ ~ 0.3 64 0.3 0.1 8000 force @a[team=Red]
execute if entity @s[team=Blue] unless block ~ ~ ~ minecraft:air run particle minecraft:dust 0 0.1 0.7 0.5 ~ ~ ~ 0.3 64 0.3 0.1 8000 force @a[team=Blue]
