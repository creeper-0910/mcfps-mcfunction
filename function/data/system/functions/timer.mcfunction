execute store result bossbar minecraft:timer value run scoreboard players get #dummy last_time
scoreboard players remove #dummy last_time 1

execute if score #dummy last_time matches 60 run title @a title {"text":"3"}
execute if score #dummy last_time matches 40 run title @a title {"text":"2"}
execute if score #dummy last_time matches 20 run title @a title {"text":"1"}
execute if score #dummy last_time matches 0 run title @a title {"text":"終了!"}
