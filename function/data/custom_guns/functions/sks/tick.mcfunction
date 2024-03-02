# 弾がない -> 音だけ
execute if data entity @s SelectedItem.tag{Bullet:0} anchored eyes positioned ^ ^ ^ run function custom_guns:cant_shot
# 弾がある -> 発射
execute unless data entity @s SelectedItem.tag{Bullet:0} anchored eyes positioned ^ ^ ^ run function custom_guns:shot
