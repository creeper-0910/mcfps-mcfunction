# 今持っているアイテムを調べる
execute store result score @s Temp run data get entity @s SelectedItem.tag.CustomModelData
# もし同じ銃を持っているならリロード時間を減らす
execute if score @s Temp = @s Reloading if score @s ReloadTime matches 1.. run scoreboard players remove @s ReloadTime 1
# もし違う銃ならリロード時間を0にする -> リロード失敗
execute unless score @s Temp = @s Reloading run function custom_guns:reload_fail

# ReloadTimeが1になったらリロード終わり
execute if score @s ReloadTime matches 1 run function custom_guns:reload_end
