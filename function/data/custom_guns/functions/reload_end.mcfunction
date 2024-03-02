#say reload_end

# スコアを先に設定(set_gun_nameはstorageじゃなくてスコアを使うため、あとマガジンとかの処理に使う)
execute store result score @s Bullet run data get entity @s SelectedItem.tag.MaxBullet

# 弾を増やすアタッチメントの処理はここに

# リロードした後の弾数を取得 リロード中はその武器を持っていなければいけないのでSelectedItemは絶対大丈夫
execute store result storage minecraft:data Bullet int 1 run scoreboard players get @s Bullet
# 弾数を設定
item modify entity @s weapon.mainhand custom_guns:copy_bullet
# アイテムの名前も設定
function custom_guns:set_gun_name

playsound minecraft:block.piston.contract master @s ~ ~ ~

# フラグを消す
scoreboard players set @s Reloading 0
scoreboard players set @s ReloadTime 0
