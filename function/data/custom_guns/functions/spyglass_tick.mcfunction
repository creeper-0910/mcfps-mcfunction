# 銃ごとの処理はここから
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:2}}}] run function custom_guns:002/tick
