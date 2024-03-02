# 投げ捨てた枠を改めて望遠鏡で置き換え
item replace entity @s weapon.mainhand with minecraft:spyglass
# データもコピーして同じ望遠鏡にするよ
data modify storage minecraft:data Other set from entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:spyglass"}}] Item.tag
# データをアイテムにコピー
item modify entity @s weapon.mainhand custom_guns:active_reload
# 投げられたアイテムは消すよ
kill @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:spyglass"}}]

# 実際のリロードはこっち
function custom_guns:reload_start

# 最後にスコアを0にする
scoreboard players reset @a TryReload2
