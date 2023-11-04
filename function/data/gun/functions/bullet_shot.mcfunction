# データ取得
execute store result score #system Burst run data get entity @s SelectedItem.tag.Burst

execute store result score @s Accurate run data get entity @s SelectedItem.tag.Accurate
execute store result score #system Range run data get entity @s SelectedItem.tag.Range

# forward_spreader
summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
data modify storage forward_spreader: Distance set value 5.0f
execute store result storage forward_spreader: Spread float 0.01 run scoreboard players get @s Accurate
execute at @s anchored eyes positioned ^ ^ ^ as @e[tag=SpreadMarker,sort=nearest,limit=1] run function forward_spreader:api/circle

summon marker ~ ~ ~ {Tags:["bullet_"]}
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=bullet_] ~ ~ ~ ~ ~
execute at @e[tag=bullet_] run particle glow ~ ~ ~ 0 0 0 0 10
# 実際に弾を飛ばす
execute as @e[tag=bullet_] at @s facing entity @e[tag=SpreadMarker,sort=nearest,limit=1] feet run function gun:bullet_move_new

# ヒット判定
execute at @s facing entity @e[tag=SpreadMarker,sort=nearest,limit=1] feet anchored eyes positioned ^ ^ ^ run function gun:select_enemy
execute at @s facing entity @e[tag=SpreadMarker,sort=nearest,limit=1] feet anchored eyes positioned ^ ^ ^ as @e[tag=Enemy,distance=..60] run function gun:gun_hit
# ダメージ処理
function gun:damage_new
# 音を鳴らす
execute as @e[tag=HitterT] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1
execute if entity @e[tag=HitterT] run playsound block.glass.break player @s ~ ~ ~ 5

tag @e[tag=HitterT] remove HitterT

kill @e[tag=bullet_]
kill @e[tag=SpreadMarker,sort=nearest,limit=1]
