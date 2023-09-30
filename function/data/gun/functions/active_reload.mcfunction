item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick
data modify storage minecraft:data Other set from entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] Item.tag
item modify entity @s weapon.mainhand gun:active_reload
kill @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute store result score @s Bullets run data get entity @s SelectedItem.tag.Bullets
execute as @s run function gun:reload
