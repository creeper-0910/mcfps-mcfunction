# 銃ごとの処理はここから
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:1}}}] run function custom_guns:001/tick
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:3}}}] run function custom_guns:sks/tick

# クロスボウを常に撃てる状態にしておく
item modify entity @s weapon.mainhand custom_guns:set_charged
