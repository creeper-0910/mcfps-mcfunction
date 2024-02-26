worldborder set 100 60
bossbar set minecraft:timer name "Ring収縮中"
bossbar set minecraft:timer max 1200
scoreboard players set #dummy success -1
# 1200t -> 60s
scoreboard players set #dummy last_time 1200
# 収縮が終わったら次のリング
schedule function system:ring/ring_test_ring1 60s
