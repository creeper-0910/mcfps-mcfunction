execute as @s at @s run tp @s ^ ^ ^0.75
execute as @s at @s run particle minecraft:dust 0 1 0 0.2 ^-0.1 ^-0.2 ^ 0 0 0 1 100 force @a[distance=1..]
execute as @s at @s run particle minecraft:dust 0 1 0 0.2 ^0.1 ^-0.2 ^ 0 0 0 1 100 force @a[distance=1..]
execute at @s run execute if block ~ ~ ~ minecraft:air run function gun:bullet_move_d