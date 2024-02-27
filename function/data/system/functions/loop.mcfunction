execute as @e[tag=rotations] run scoreboard players operation @s Rotation += @s RotationAdd
execute as @e[tag=rotations] if score @s Rotation matches 360.. run scoreboard players remove @s Rotation 360
execute as @e[tag=rotations] store result entity @s Rotation[0] float 1 run scoreboard players get @s Rotation
execute as @e[tag=pylon_head] at @s run particle glow_squid_ink ~ ~ ~

execute at @e[tag=py,nbt={OnGround:true}] run function system:placepylon
kill @e[tag=py,nbt={OnGround:true}]

execute as @a store result score @s Speed run attribute @s generic.movement_speed get 100
execute as @a unless entity @s[nbt={SelectedItem:{tag:{Gun:true}}}] unless score @s Speed matches 11 run attribute @s generic.movement_speed base set 0.11
execute as @a if entity @s[nbt={SelectedItem:{tag:{Type:"AR"}}}] unless score @s Speed matches 10 run attribute @s generic.movement_speed base set 0.1
execute as @a if entity @s[nbt={SelectedItem:{tag:{Type:"SR"}}}] unless score @s Speed matches 8 run attribute @s generic.movement_speed base set 0.08
execute as @a if entity @s[nbt={SelectedItem:{tag:{Type:"LMG"}}}] unless score @s Speed matches 9 run attribute @s generic.movement_speed base set 0.09
execute as @a if entity @s[nbt={SelectedItem:{tag:{Type:"Hand"}}}] unless score @s Speed matches 10 run attribute @s generic.movement_speed base set 0.1
execute as @a if entity @s[nbt={SelectedItem:{tag:{Type:"Special"}}}] unless score @s Speed matches 10 run attribute @s generic.movement_speed base set 0.1
