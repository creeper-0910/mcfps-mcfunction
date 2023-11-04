# データ取得
execute store result score #system Burst run data get entity @s SelectedItem.tag.Burst
execute store result score @s Accurate run data get entity @s SelectedItem.tag.Accurate
execute store result score #system Range run data get entity @s SelectedItem.tag.Range

function gun:bullet_shot_loop0
