# 銃ごとの処理はここから
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:1}}}] run function custom_guns:001/tick

# クロスボウを常に撃てる状態にしておく
item modify entity @s weapon.mainhand custom_guns:set_charged
