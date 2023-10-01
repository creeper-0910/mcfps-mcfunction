execute store result bossbar minecraft:timer value run scoreboard players get #dummy last_time
scoreboard players remove #dummy last_time 1

execute if score #dummy last_time matches 3 run title @a title {"text":"3"}
execute if score #dummy last_time matches 2 run title @a title {"text":"2"}
execute if score #dummy last_time matches 1 run title @a title {"text":"1"}
