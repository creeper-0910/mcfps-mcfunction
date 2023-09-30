scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] Bullets 10
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{kusa:"kusa"}}}] Bullets 30
execute store result storage minecraft:data Bullets double 1 run scoreboard players get @s Bullets
item modify entity @s weapon.mainhand gun:gun_bullet_nbt
item modify entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] weapon.mainhand gun:gun_bullet_name/first_gun
item modify entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{kusa:"kusa"}}}] weapon.mainhand gun:gun_bullet_name/anko_gun
playsound minecraft:block.chain.place master @s ~ ~ ~ 1 1 0
