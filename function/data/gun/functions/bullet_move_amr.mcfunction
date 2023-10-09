execute as @s at @s run tp @s ^ ^ ^1
execute as @s at @s run particle minecraft:dust 1 0 0 0.2 ~ ~ ~ 0 0 0 1 10 force @a[distance=1..]
execute at @s unless block ~ ~ ~ minecraft:air run summon creeper ~ ~ ~ {Fuse:1s,ignited:true}
execute at @s if block ~ ~ ~ minecraft:air run function gun:bullet_move_amr
