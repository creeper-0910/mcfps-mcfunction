bossbar set minecraft:timer name "最終リング 残り時間"
scoreboard players set #dummy success 2
scoreboard players set #dummy last_time 1500
worldborder set 10 60
schedule function system:print_winner 75s
