bossbar set minecraft:timer name "Ring2 残り時間"
bossbar set minecraft:timer max 1800
scoreboard players set #dummy success 1
# 600t -> 30s
scoreboard players set #dummy last_time 600
# リング収縮開始 90-60
schedule function system:ring/ring_reduction_2 30s
