execute if entity @s[nbt={Inventory:[{Slot:-106b,Count:1b,tag:{Tags:ext_mor}}]}] run tellraw @s {"text":"すでにカードはセットされています"}
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:801}}},nbt=!{Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:8}}]}] run tellraw @s {"text":"左手にExterminaMemoriaを持って右クリックで使用"}
execute unless entity @a[nbt={Inventory:[{Slot:-106b,Count:1b,tag:{Tags:ext_mor}}]}] if entity @s[nbt={SelectedItem:{tag:{CustomModelData:801}},Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:8}}]}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"extermina memoria   [36]"}'},CustomModelData:8,Bullets:36,Gun:true,Range:47,Type:"AR",Burst:2,kari:kari,pois:"true"}
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:801}},Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:8}}]},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{kari:kari}}]}] run item replace entity @s weapon.mainhand with air
execute if entity @s[nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:8}}]},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{kari:kari}}]}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"extermina memoria   [16]"}'},CustomModelData:8,Bullets:16,Gun:true,Range:47,Type:"AR",Burst:2,pois:"true"}