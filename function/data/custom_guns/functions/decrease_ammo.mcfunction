# 弾数取得
execute store result score @s Bullet run data get entity @s SelectedItem.tag.Bullet

# 減算
scoreboard players remove @s Bullet 1
# storageに入れる(そうしないとコピーできないので)
execute store result storage minecraft:data Bullet int 1 run scoreboard players get @s Bullet
# 実際に弾数変更
item modify entity @s weapon.mainhand custom_guns:copy_bullet

# アイテムの表示も変更
function custom_guns:set_gun_name