bossbar set minecraft:timer name "Ring2 残り時間"
scoreboard players set #dummy success 1
scoreboard players set #dummy last_time 4500
worldborder set 100 60
schedule function system:ring_test_ring2 225s
