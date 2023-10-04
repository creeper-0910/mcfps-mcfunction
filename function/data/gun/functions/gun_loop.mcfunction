execute as @a[scores={shot_gun=1}] store result score @s Bullets run data get entity @s SelectedItem.tag.Bullets
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run function gun:bullet_pos
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:2}}}] at @s run function gun:double_bullet_pos
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:3}}}] at @s run function gun:lmg_pos
execute as @a[scores={shot_gun=1,Bullets=0..}] at @s run function gun:reload
scoreboard players reset @a[scores={shot_gun=1..}] shot_gun

execute as @a if score @s TryReload1 matches 1.. run function gun:active_reload

execute as @a if score @s TryReload1 matches 1.. run scoreboard players reset @s TryReload1
