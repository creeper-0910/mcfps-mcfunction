# リロード時間(tick)を取得
execute store result score @s ReloadTime run data get entity @s SelectedItem.tag.ReloadTime
# 1になった瞬間リロード終了にするので1を足す
scoreboard players add @s ReloadTime 1
# 今リロードしている銃のIDを取得する
execute store result score @s Reloading run data get entity @s SelectedItem.tag.CustomModelData

# リロード時間を減らすアタッチメントの処理はここに

# アイテムの名前に使うので弾数を取得しておく
execute store result score @s Bullet run data get entity @s SelectedItem.tag.Bullet
# アイテムの名前を変更する
function custom_guns:set_gun_reloading

playsound minecraft:block.piston.extend master @s ~ ~ ~
