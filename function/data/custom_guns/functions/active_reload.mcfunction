# 投げ捨てた枠を改めてクロスボウで置き換え
item replace entity @s weapon.mainhand with minecraft:crossbow
# データもコピーして同じクロスボウにするよ
data modify storage minecraft:data Other set from entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] Item.tag
# データをアイテムにコピー
item modify entity @s weapon.mainhand custom_guns:active_reload
# 投げられたアイテムは消すよ
kill @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}]

# 実際のリロードはこっち
function custom_guns:reload_start

# 最後にスコアを0にする
scoreboard players reset @a TryReload1
