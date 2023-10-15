scoreboard players operation @p[scores={player_id=0}] player_id = #next pid
scoreboard players add #next pid 1
execute if entity @a[scores={player_id=0}] run function system:rand_player_id0
