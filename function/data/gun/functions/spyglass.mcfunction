execute store result score @s Bullets run data get entity @s SelectedItem.tag.Bullets
execute as @s[scores={Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:512}}}] at @s run function gun:bullet_pos
advancement revoke @s only gun:use_spyglass
