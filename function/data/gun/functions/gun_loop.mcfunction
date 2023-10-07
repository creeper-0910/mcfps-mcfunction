execute as @a[scores={shot_gun=1}] store result score @s Bullets run data get entity @s SelectedItem.tag.Bullets
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run function gun:bullet_pos
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:2}}}] at @s run function gun:double_bullet_pos
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:3}}}] at @s run function gun:lmg_pos
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] at @s run function gun:search_gun_pos

execute as @s[scores={Bullets=1..},nbt={SelectedItem:{id:"minecraft:spyglass", tag:{CustomModelData:512}}}] at @s run function gun:sniper_pos

#Search
execute as @e[tag=ryujin] at @s run tp @s ^ ^ ^1.2
execute as @e[tag=ryujin] at @s run scoreboard players add @s Search 1
execute as @e[tag=ryujin] at @s run damage @e[distance=..0.99,limit=1,type=!creeper] 10 magic
execute as @e[tag=ryujin] at @s run effect give @e[distance=..0.99,limit=3] glowing 5 5
execute as @e[scores={Search=30..},tag=ryujin] at @s run kill @s

scoreboard players reset @a[scores={shot_gun=1..}] shot_gun

execute as @a if score @s TryReload1 matches 1.. run function gun:active_reload

execute as @a if score @s TryReload1 matches 1.. run scoreboard players reset @s TryReload1
