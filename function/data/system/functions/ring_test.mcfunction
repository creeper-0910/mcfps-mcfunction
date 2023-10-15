worldborder set 192
bossbar set minecraft:timer name "Ring1 残り時間"
scoreboard players set #dummy success 0
scoreboard players set #dummy last_time 6000
schedule function system:ring_test_ring1 300s
