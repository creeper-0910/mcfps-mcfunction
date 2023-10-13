scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] Bullets 10
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] Bullets 30
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] Bullets 300
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] Bullets 10
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] Bullets2 10
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}}] Bullets 20
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:spyglass",tag:{CustomModelData:512}}}] Bullets 5
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:spyglass",tag:{CustomModelData:513}}}] Bullets 2
execute store result storage minecraft:data Bullets double 1 run scoreboard players get @s Bullets
execute store result storage minecraft:data Bullets2 double 1 run scoreboard players get @s Bullets2
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run item modify entity @s weapon.mainhand gun:gun_bullet_nbt
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run item modify entity @s weapon.mainhand gun:gun_bullet_nbt2
item modify entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] weapon.mainhand gun:gun_bullet_name/first_gun
item modify entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] weapon.mainhand gun:gun_bullet_name/anko_gun
item modify entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] weapon.mainhand gun:gun_bullet_name/lmg
item modify entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] weapon.mainhand gun:gun_bullet_name/wallhacker
item modify entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] weapon.mainhand gun:gun_bullet_name/new_generation
item modify entity @s[nbt={SelectedItem:{id:"minecraft:spyglass",tag:{CustomModelData:512}}}] weapon.mainhand gun:gun_bullet_name/sniper
item modify entity @s[nbt={SelectedItem:{id:"minecraft:spyglass",tag:{CustomModelData:513}}}] weapon.mainhand gun:gun_bullet_name/amr
execute at @s run playsound minecraft:block.chain.place master @s ~ ~ ~ 1 1
