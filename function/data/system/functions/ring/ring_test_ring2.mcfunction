bossbar set minecraft:timer name "最終リング 残り時間"
scoreboard players set #dummy success 2
# 600t -> 30s
scoreboard players set #dummy last_time 600

schedule function system:print_winner 30s
