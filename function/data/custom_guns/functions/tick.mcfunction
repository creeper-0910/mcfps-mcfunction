# クールダウンで撃てない
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow"}},scores={GunCoolTime=1..,Shot_Crossbow=1..}] run playsound minecraft:block.lava.extinguish master @s
# クロスボウを撃った時の処理
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow"}},scores={GunCoolTime=0,Shot_Crossbow=1..}] at @s run function custom_guns:crossbow_tick

# クールダウンで撃てない
execute as @a[nbt={SelectedItem:{id:"minecraft:spyglass"}},scores={GunCoolTime=1..,sneakcount=2..},predicate=!custom_guns:is_sneak] at @s run playsound minecraft:block.lava.extinguish master @s
# 望遠鏡を撃った時の処理
execute as @a[nbt={SelectedItem:{id:"minecraft:spyglass"}},scores={GunCoolTime=0,sneakcount=2..},predicate=!custom_guns:is_sneak] at @s run function custom_guns:spyglass_tick

# リロードのtick処理
execute as @a at @s if entity @s[nbt={SelectedItem:{tag:{Gun:true}}}] run function custom_guns:reload_loop
# 銃ですらないのでリロード失敗
execute as @a at @s unless entity @s[nbt={SelectedItem:{tag:{Gun:true}}}] unless score @s ReloadTime matches 0 run function custom_guns:reload_fail

# クロスボウを投げ捨てたらリロード開始
execute as @a[scores={TryReload1=1..}] at @s run function custom_guns:active_reload
execute as @a[scores={TryReload2=1..}] at @s run function custom_guns:active_reload2

# リロードに失敗したら名前を変える
execute as @a at @s if entity @s[nbt={SelectedItem:{tag:{Reloading:true}}}] if score @s ReloadTime matches 0 run function custom_guns:set_gun_name

# 最後にスコアを0にする
scoreboard players reset @a Shot_Crossbow

# スニークを解除したのでsneakcountを0に
scoreboard players reset @a[predicate=!custom_guns:is_sneak] sneakcount

# クールタイムを待つ
scoreboard players remove @a[scores={GunCoolTime=1..}] GunCoolTime 1
