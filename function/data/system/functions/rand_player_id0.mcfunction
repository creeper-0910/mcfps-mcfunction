scoreboard players operation @p[scores={playerid=0}] playerid = #next pid
scoreboard players add #next pid 1
execute if entity @a[scores={playerid=0}] run function system:rand_player_id0
