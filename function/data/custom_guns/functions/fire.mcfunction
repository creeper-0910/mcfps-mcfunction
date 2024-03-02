# 射程を銃から取得
execute store result score #system Range run data get entity @s SelectedItem.tag.Range
scoreboard players set #system GlassBreak 1

# 弾を実際に生成
summon minecraft:marker ~ ~ ~ {Tags:["bullet_"]}
#summon minecraft:armor_stand ~ ~ ~ {Tags:["bullet_"],Marker:true}
execute at @s anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[tag=bullet_,sort=nearest,limit=1] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=bullet_,sort=nearest,limit=1] playerid = @s playerid

# 再帰処理
execute at @s anchored eyes positioned ^ ^ ^1 as @e[tag=bullet_,sort=nearest,limit=1] at @s run function custom_guns:fire_loop

# ここから戻ってきても残ってたらkillされる
kill @e[tag=bullet_,sort=nearest,limit=1]

# クールダウンを設定
execute store result score @s GunCoolTime run data get entity @s SelectedItem.tag.CoolTime
