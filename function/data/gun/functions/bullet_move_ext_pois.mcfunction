execute as @s at @s run tp @s ^ ^ ^1
execute as @s at @s run particle minecraft:dust 0.047 0.278 0 0.2 ~ ~ ~ 0 0 0 1 10 force @a[distance=1..]
execute at @s unless block ~ ~ ~ minecraft:air run summon potion ~ ~ ~ {CustomName:'{"text":"ありふれたポーション"}',Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_poison",CustomPotionColor:6160384}}}
execute at @s if block ~ ~ ~ minecraft:air run function gun:bullet_move_ext_pois

