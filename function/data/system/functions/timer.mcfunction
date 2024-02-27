execute store result bossbar minecraft:timer value run scoreboard players get #dummy last_time
scoreboard players remove #dummy last_time 1

execute if score #dummy last_time matches 600 run tellraw @a {"text":"あと30秒だよー"}
execute if score #dummy success matches 0 if score #dummy last_time matches 0 run title @a title {"text":"リング収縮中だよ～"}
execute if score #dummy success matches 1 if score #dummy last_time matches 0 run title @a title {"text":"リング収縮中だよ～"}

execute if score #dummy success matches 2 if score #dummy last_time matches 60 run title @a title {"text":"3"}
execute if score #dummy success matches 2 if score #dummy last_time matches 40 run title @a title {"text":"2"}
execute if score #dummy success matches 2 if score #dummy last_time matches 20 run title @a title {"text":"1"}
execute if score #dummy success matches 2 if score #dummy last_time matches 0 run title @a title {"text":"終了!"}
execute if score #dummy success matches 2 if score #dummy last_time matches 0 at @a run playsound item.goat_horn.sound.1 master @a ~ ~ ~
# 負けはitem.goat_horn.sound.5
execute if score #dummy success matches 2 if score #dummy last_time matches 0 run bossbar set minecraft:timer visible false
