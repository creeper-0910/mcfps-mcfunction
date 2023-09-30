execute store result score @s Bullets run data get entity @s SelectedItem.tag.Bullets
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run function gun:bullet_pos
execute as @a[scores={shot_gun=1,Bullets=1..}] if entity @s[nbt={SelectedItem:{tag:{kusa:"kusa"}}}] at @s run function gun:double_bullet_pos
scoreboard players reset @a[scores={shot_gun=1..}] shot_gun
