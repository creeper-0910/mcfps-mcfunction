execute as @e[tag=rotations] run scoreboard players operation @s Rotation += @s RotationAdd
execute as @e[tag=rotations] if score @s Rotation matches 360.. run scoreboard players remove @s Rotation 360
execute as @e[tag=rotations] store result entity @s Rotation[0] float 1 run scoreboard players get @s Rotation
execute as @e[tag=pylon_head] at @s run particle glow_squid_ink ~ ~ ~
