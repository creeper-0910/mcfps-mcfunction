scoreboard players operation @e[tag=rotations] Rotation += @e[tag=rotations] RotationAdd
execute as @e[tag=rotations] if score @s Rotation matches 180.. run scoreboard players set @s Rotation -180
execute as @e[tag=rotations] store result entity @s Rotation[0] float 1 run scoreboard players get @s Rotation
