tp @s ^ ^ ^2
particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0 2 force
particle minecraft:flash ~ ~ ~ 0 0 0 1 4 force
execute at @a[distance=..15,scores={neoglow=0}] run playsound entity.chicken.death master @s ~ ~ ~ 0.1 1
effect give @a[distance=..15,scores={noglow=0}] glowing 4 1
scoreboard players add @s Distance 1
kill @s[scores={Distance=60..}]
